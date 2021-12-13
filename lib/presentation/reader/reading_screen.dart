import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:unity_ads_plugin/unity_ads.dart';
import '../../helper/global/cutom_error_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../application/comic_reader/comic_reader_bloc.dart';
import '../../domain/episodes/episodes.dart';
import '../../helper/global/loading_indicator.dart';
import '../../helper/global/pdf_transform.dart';
import '../../injection.dart';
import 'components/reading_nav_bar.dart';

class ReadingScreen extends StatefulWidget {
  final Episodes episode;

  const ReadingScreen({Key? key, required this.episode}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  Future<String> loadPDf(String url) async {
    final file = await PDFApi.loadNetwork(url);
    return file.path;
  }

  late WebViewController _webViewController;

  // Add _interstitialAd

  @override
  void initState() {
    UnityAds.init(
      gameId: AdManager.gameId,
      testMode: true,
      listener: (state, args) => print('Init Listener: $state => $args'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ComicReaderBloc>()
        ..add(ComicReaderEvent.checkPdf(widget.episode.comicId,
            widget.episode.episodeName, widget.episode.episodeNumber)),
      child: BlocConsumer<ComicReaderBloc, ComicReaderState>(
        listener: (context, state) => state.maybeMap(
            orElse: () {},
            chgEpisodeSuccess: (state) {
              context.read<ComicReaderBloc>().add(ComicReaderEvent.checkPdf(
                  state.episodes.comicId,
                  state.episodes.episodeName,
                  state.episodes.episodeNumber));
            }),
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Container(),
              loading: (_) => const LoadingIndicator(),
              error: (error) => CustomError(
                  errorMessage: error.failure.maybeMap(
                      unexcepted: (_) => "Unexcepted Error occured.",
                      notFound: (_) => "No Saved Mangas",
                      orElse: () => "Unknown Error"),
                  errorImage: "assets/logo/error.svg"),
              driveLoaded: (state) {
                return Scaffold(
                  appBar: AppBar(
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    elevation: 0.0,
                    title: Row(
                      children: [
                        Text(state.pdf.episodeName),
                        Text(state.pdf.episodeNumber.toString()),
                      ],
                    ),
                  ),
                  bottomNavigationBar: ReadingNavBar(
                    episode: state.pdf,
                  ),
                  body: WebView(
                    initialUrl: state.pdf.driveLink,
                    javascriptMode: JavascriptMode.unrestricted,
                    onWebViewCreated: (WebViewController webViewController) {
                      _webViewController = webViewController;
                      // _controller.complete(webViewController);
                    },
                    onPageFinished: (String url) {
                      // Removes header and footer from page
                      _webViewController
                          .runJavascript("javascript:(function() { "
                              "var head = document.getElementsByTagName('header')[0];"
                              "head.parentNode.removeChild(head);"
                              "var footer = document.getElementsByTagName('footer')[0];"
                              "footer.parentNode.removeChild(footer);"
                              "})()")
                          .then((value) =>
                              debugPrint('Page finished loading Javascript'))
                          .catchError((onError) => debugPrint('$onError'));
                    },
                  ),
                );
              },
              pdfLoaded: (state) {
                return Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          UnityAds.showVideoAd(
                            placementId:
                                AdManager.interstitialVideoAdPlacementId,
                            listener: (state, args) => print(
                                'Interstitial Video Listener: $state => $args'),
                          );
                          Navigator.of(context).pop();
                        },
                      ),
                      elevation: 0.0,
                      title: Row(
                        children: [
                          Text(state.pdf.episodeName),
                          Text(state.pdf.episodeNumber.toString()),
                        ],
                      ),
                    ),
                    bottomNavigationBar: ReadingNavBar(
                      episode: state.pdf,
                    ),
                    body: FutureBuilder<String>(
                        future: loadPDf(state.pdf.pdfFile!),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const LoadingIndicator();
                          }
                          if (snapshot.hasError) {
                            return const CustomError(
                                errorMessage:
                                    "Something went wrong.Try again Later",
                                errorImage: "assets/logo/error.svg");
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            if (snapshot.hasData) {
                              return PDFView(filePath: snapshot.data);
                            }
                          }
                          return const SizedBox();
                        }));
              });
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class AdManager {
  static String get gameId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return '4498368';
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'your_ios_game_id';
    }
    return '';
  }

  static String get interstitialVideoAdPlacementId {
    return 'Chapter_End';
  }
}
