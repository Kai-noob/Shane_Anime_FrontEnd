import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/date_time_transform.dart';
import 'package:movie_app/core/global/error_message.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/features/home/presentation/bloc/hot_comic/hot_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';

class HotAllComicView extends StatelessWidget {
  const HotAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text("Hot Mangas"),
        ),
        body: BlocBuilder<HotBloc, HotState>(
          builder: (context, state) {
            if (state is HotComicError) {
              return ErrorMessage(
                message: state.message,
                isSliver: true,
              );
            }
            if (state is HotComicLoaded) {
              return ListView.builder(
                itemCount: state.hotComics.length,
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
                                            comicModel:
                                                state.hotComics[index])));
                              },
                              child: ImageWidget(
                                image: state.hotComics[index].coverPhoto,
                              ),
                            )),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(state.hotComics[index].title,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800)),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: state.hotComics[index].completed
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Text(
                                    state.hotComics[index].completed
                                        ? "Completed"
                                        : "On going",
                                    style: const TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Text(
                                    "${state.hotComics[index].episodeCount} Episodes"),
                                Text(DateTimeTransfrom().formatTimestamp(
                                    state.hotComics[index].created.seconds))
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
            return Container();
          },
        ));
  }
}
