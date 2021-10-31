import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/local/shared_pref_helper.dart';
import 'package:movie_app/features/home/data/models/recent_episode_model.dart';
import 'package:provider/provider.dart';
import '../../../../../injector.dart';
import '../../../../domain/entities/episodes.dart';
import '../../../bloc/details/details_bloc.dart';

import 'widgets/reading_view.dart';

class ReadingScreen extends StatefulWidget {
  final Episode episodes;
  const ReadingScreen({Key? key, required this.episodes}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  final GlobalKey<NavigatorState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Provider.of<SharedPrefHelper>(context, listen: false).addToLocal(
            EpisodeModel(
                comicId: widget.episodes.comicId,
                episodeName: widget.episodes.episodeName,
                title: widget.episodes.title,
                coverPhoto: widget.episodes.coverPhoto,
                episodeNumber: widget.episodes.episodeNumber));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
              "${widget.episodes.episodeName}${widget.episodes.episodeNumber.toString()}"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Provider.of<SharedPrefHelper>(context, listen: false).addToLocal(
                  EpisodeModel(
                      comicId: widget.episodes.comicId,
                      episodeName: widget.episodes.episodeName,
                      title: widget.episodes.title,
                      coverPhoto: widget.episodes.coverPhoto,
                      episodeNumber: widget.episodes.episodeNumber));
              Navigator.of(context).pop();
            },
          ),
        ),
        body: BlocProvider(
          create: (context) => DetailsBloc(sl(), sl(), sl(), sl())
            ..add(CheckPdfOrImagesEvent(widget.episodes.comicId,
                widget.episodes.episodeName, widget.episodes.episodeNumber)),
          child: ReadingView(
            episodes: widget.episodes,
          ),
        ),
      ),
    );
  }
}
