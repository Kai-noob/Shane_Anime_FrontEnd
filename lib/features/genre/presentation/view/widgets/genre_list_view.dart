import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/date_time_transform.dart';
import 'package:movie_app/core/global/error_message.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';

import '../../../../injector.dart';

class GenreListView extends StatelessWidget {
  final Genre genre;
  const GenreListView({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<GenreBloc>(context).add(FetchComics(genre.id));
    return BlocProvider(
      create: (context) => GenreBloc(sl(), sl())..add(FetchComics(genre.id)),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(genre.name),
        ),
        body: BlocBuilder<GenreBloc, GenreState>(
          builder: (context, state) {
            if (state is ComicsError) {
              return ErrorMessage(
                message: state.message,
                isSliver: false,
              );
            }
            if (state is ComicsLoading) {
              return const LoadingIndicator();
            }
            if (state is ComicsSuccess) {
              if (state.comics.isEmpty) {
                return const Center(
                  child: Text("No Releated Comics Found"),
                );
              }
              return ListView.builder(
                itemCount: state.comics.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.45,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailsScreen(
                                            comicModel: state.comics[index])));
                              },
                              child: ImageWidget(
                                image: state.comics[index].coverPhoto,
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.comics[index].title,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800)),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: state.comics[index].completed
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    state.comics[index].completed
                                        ? "Completed"
                                        : "On going",
                                    style: const TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Text(
                                    "${state.comics[index].episodeCount} Episodes"),
                                Text(DateTimeTransfrom().formatTimestamp(
                                    state.comics[index].created.seconds))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  );
                },
              );
            }
            if (state is ComicsError) {
              return Center(
                child: Text(state.message),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
