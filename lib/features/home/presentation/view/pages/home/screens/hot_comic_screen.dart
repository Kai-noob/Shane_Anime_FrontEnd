import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/global/date_time_transform.dart';
import 'package:movie_app/core/global/error_message.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/bloc/hot_comic/hot_bloc.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/screens/details_screen.dart';
import 'package:movie_app/features/injector.dart';

class HotAllComicView extends StatelessWidget {
  const HotAllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotBloc(sl(), sl())..add(FetchAllHotComic()),
      child: Scaffold(
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
              if (state is HotAllComicError) {
                return ErrorMessage(
                  message: state.message,
                  isSliver: false,
                );
              }
              if (state is HotAllComicLoading) {
                return const LoadingIndicator();
              }

              if (state is HotAllComicLoaded) {
                return ListView.builder(
                  itemCount: state.hotComics.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                  height: 200,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  DetailsScreen(
                                                      comicModel: state
                                                          .hotComics[index])));
                                    },
                                    child: ImageWidget(
                                      image: state.hotComics[index].coverPhoto,
                                    ),
                                  )),
                              Positioned(
                                left: -36,
                                top: 10,
                                child: RotationTransition(
                                  turns: AlwaysStoppedAnimation(-45 / 360),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 32),
                                    color: Colors.black,
                                    child: Text(
                                      state.hotComics[index].completed
                                          ? "Completed"
                                          : "On going",
                                      style: TextStyle(
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
                                  Text(state.hotComics[index].title,
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w800)),
                                  Wrap(
                                      children: state.hotComics[index].genres
                                          .map((e) => Text(e.name))
                                          .toList()),
                                  SizedBox(height: 8),

                                  Text(
                                      "${state.hotComics[index].episodeCount} Episodes"),
                                  // Text(DateTimeTransfrom().formatTimestamp(
                                  //     state.hotComics[index].created.seconds)),
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
          )),
    );
  }
}
