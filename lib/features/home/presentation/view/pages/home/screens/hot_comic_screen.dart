import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/global/error_message.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../bloc/hot_comic/hot_bloc.dart';
import '../../details/screens/details_screen.dart';
import '../../../../../../injector.dart';

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
                    String genre = state.hotComics[index].genres
                        .map((e) => e.name)
                        .join(",");
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                  height: 180,
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
                                  turns:
                                      const AlwaysStoppedAnimation(-45 / 360),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 32),
                                    color: const Color(0xff212121),
                                    child: Text(
                                      state.hotComics[index].completed
                                          ? "Completed"
                                          : "On going",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 10),
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
                                  Text(
                                    genre,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                      "${state.hotComics[index].episodeCount} Episodes"),
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
