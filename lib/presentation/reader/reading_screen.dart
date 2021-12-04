import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../application/comic_reader/comic_reader_bloc.dart';
import '../../domain/episodes/episodes.dart';
import '../../helper/global/error_message.dart';
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

class _ReadingScreenState extends State<ReadingScreen>
    with SingleTickerProviderStateMixin {
  Future<String> loadPDf(String url) async {
    final file = await PDFApi.loadNetwork(url);
    return file.path;
  }

  late WebViewController _webViewController;

  late AnimationController animationController;

  bool hideNav = false;

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
              loading: (_) => LoadingIndicator(),
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
                    onProgress: (int progress) {
                      print("WebView is loading (progress : $progress%)");
                    },
                    onPageStarted: (String url) {
                      print('Page started loading: $url');
                    },
                    onPageFinished: (String url) {
                      print('Page finished loading: $url');

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
                            return const ErrorMessage(
                                message: "Something wrong.", isSliver: false);
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
