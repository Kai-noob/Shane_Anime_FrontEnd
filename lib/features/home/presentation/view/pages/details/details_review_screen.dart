import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/presentation/bloc/details_bloc.dart';

import '../../../../../injector.dart';

class DetailsReviewScreen extends StatelessWidget {
  final Comic comicModel;
  const DetailsReviewScreen({Key? key, required this.comicModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<DetailsBloc>()..add(FetchGenre(comicModel.id)),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Ionicons.close_circle_outline,
                          size: 30,
                        )),
                  ),
                ),
                Container(
                  height: 250,
                  width: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(comicModel.coverPhoto))),
                ),
                SizedBox(
                  height: 40,
                ),
                BlocBuilder<DetailsBloc, DetailsState>(
                  builder: (context, state) {
                    if (state is DetailsGenreLoaded) {
                      return Wrap(
                          runSpacing: 15,
                          spacing: 15,
                          children: state.genres
                              .map(
                                (e) => Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Colors.white, width: 1.3)),
                                  child: Text(
                                    e.name,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              )
                              .toList());
                    }
                    return Container();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Review",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  comicModel.review,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Presented By Shane Manga",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
