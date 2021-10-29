import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/daily_update/daily_update_bloc.dart';
import '../../../../domain/entities/episodes.dart';
import '../../../bloc/details/details_bloc.dart';

import '../../../../../injector.dart';

import 'widgets/reading_view.dart';

class ReadingScreen extends StatefulWidget {
  final Episode episodes;
  const ReadingScreen({Key? key, required this.episodes}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  @override
  void didUpdateWidget(covariant ReadingScreen oldWidget) {
    BlocProvider.of<DetailsBloc>(context).add(ReadNextChapter(
        widget.episodes.comicId,
        widget.episodes.episodeName,
        widget.episodes.episodeNumber,
        false,
        true,
        false));
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DetailsBloc>(context).add(ReadNextChapter(
        widget.episodes.comicId,
        widget.episodes.episodeName,
        widget.episodes.episodeNumber,
        false,
        true,
        false));
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.episodes.episodeName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ReadingView(
        episodes: widget.episodes,
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 50,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: TextButton(
                  onPressed: () {
                    BlocProvider.of<DetailsBloc>(context).add(ReadNextChapter(
                        widget.episodes.comicId,
                        widget.episodes.episodeName,
                        widget.episodes.episodeNumber,
                        false,
                        false,
                        true));
                    // BlocProvider.of<DetailsBloc>(context)
                    //     .add(CheckPdfOrImagesEvent(
                    //   widget.episodes.comicId,
                    //   widget.episodes.episodeName,
                    //   widget.episodes.episodeNumber - 1,
                    // ));
                  },
                  child: Text(
                    "Prev",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: TextButton(
                  onPressed: () {
                    BlocProvider.of<DetailsBloc>(context).add(ReadNextChapter(
                        widget.episodes.comicId,
                        widget.episodes.episodeName,
                        widget.episodes.episodeNumber,
                        true,
                        false,
                        false));

                    // BlocProvider.of<DetailsBloc>(context)
                    //     .add(CheckPdfOrImagesEvent(
                    //   widget.episodes.comicId,
                    //   widget.episodes.episodeName,
                    //   widget.episodes.episodeNumber + 1,
                    // ));
                  },
                  child: Text("Next",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
