import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/details_bloc.dart';

import '../../../../../injector.dart';
import '../../../../domain/entities/episodes.dart';

import 'widgets/reading_view.dart';

class ReadingScreen extends StatelessWidget {
  final Episodes episodes;
  ReadingScreen({Key? key, required this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DemonSlayer"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        // bottomNavigationBar: ReadingNavBar(
        //     pageController: pageController, currentPage: currentPage),
        body: BlocProvider(
          create: (context) => sl<DetailsBloc>()
            ..add(FetchImages(episodes.comicId, episodes.episodeName)),
          child: ReadingView(
            episodes: episodes,
          ),
        ));
  }
}
