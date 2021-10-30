import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/global/error_message.dart';
import '../../../../../core/global/image_widget.dart';
import '../../../../../core/global/loading_indicator.dart';
import '../../../domain/entities/genre.dart';
import '../../bloc/genre_bloc.dart';
import '../../../../home/presentation/view/pages/details/screens/details_screen.dart';

import '../../../../injector.dart';

class GenreListView extends StatelessWidget {
  final Genre genre;
  const GenreListView({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  String genre =
                      state.comics[index].genres.map((e) => e.name).join(",");
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailsScreen(
                                                    comicModel:
                                                        state.comics[index])));
                                  },
                                  child: ImageWidget(
                                    image: state.comics[index].coverPhoto,
                                  ),
                                )),
                            Positioned(
                              left: -36,
                              top: 10,
                              child: RotationTransition(
                                turns: const AlwaysStoppedAnimation(-45 / 360),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 32),
                                  color: Colors.black,
                                  child: Text(
                                    state.comics[index].completed
                                        ? "Completed"
                                        : "On going",
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
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
                                Text(
                                  genre,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                    "${state.comics[index].episodeCount} Episodes"),
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
              return ErrorMessage(message: state.message, isSliver: false);
            }
            return Container();
          },
        ),
      ),
    );
  }
}
