import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/entities/episodes.dart';
import '../../../bloc/details/details_bloc.dart';

import '../../../../../injector.dart';

import 'widgets/reading_view.dart';

class ReadingScreen extends StatelessWidget {
  final Episode episodes;
  const ReadingScreen({Key? key, required this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(episodes.episodeName),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: BlocProvider(
          create: (context) => sl<DetailsBloc>()
            ..add(CheckPdfOrImages(episodes.comicId, episodes.episodeName)),
          child: ReadingView(
            episodes: episodes,
          ),
        ));
  }
}
