import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:movie_app/application/comic_reader/comic_reader_bloc.dart';
import 'package:movie_app/domain/episodes/episodes.dart';
import 'package:movie_app/helper/global/error_message.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/helper/global/pdf_transform.dart';
import 'package:movie_app/injection.dart';

class ReadingScreen extends StatelessWidget {
  final Episodes episode;
  const ReadingScreen({Key? key, required this.episode}) : super(key: key);

  Future<String> loadPDf(String url) async {
    final file = await PDFApi.loadNetwork(url);
    return file.path;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ComicReaderBloc>()
        ..add(ComicReaderEvent.getPdf(
            episode.comicId, episode.episodeName, episode.episodeNumber)),
      child: Scaffold(
        body: BlocBuilder<ComicReaderBloc, ComicReaderState>(
          builder: (context, state) {
            return state.map(
                loading: (_) => const LoadingIndicator(),
                loaded: (state) {
                  return FutureBuilder<String>(
                      future: loadPDf(state.pdf),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const LoadingIndicator();
                        }
                        if (snapshot.hasError) {
                          return const ErrorMessage(
                              message: "Something wrong.", isSliver: false);
                        }
                        if (snapshot.hasData) {
                          return Scaffold(
                              floatingActionButton: FloatingActionButton(
                                elevation: 0.0,
                                backgroundColor: Colors.red,
                                onPressed: () {
                                  // setState(() {
                                  //   isDarkMode = !isDarkMode;
                                  // });
                                },
                                child: const Icon(
                                  Icons.light_mode,
                                  color: Colors.white,
                                ),
                              ),
                              body: PDFView(filePath: snapshot.data));
                        }
                        return const SizedBox();
                      });
                },
                error: (_) =>
                    const ErrorMessage(message: "Error", isSliver: false));
          },
        ),
      ),
    );
  }
}
