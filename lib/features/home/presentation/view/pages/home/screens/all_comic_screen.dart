import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../bloc/all_comic/allcomic_bloc.dart';
import '../../../../../../../core/global/error_message.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../details/screens/details_screen.dart';
import '../../../../../../injector.dart';

class AllComicView extends StatelessWidget {
  const AllComicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllcomicBloc(sl(), sl())..add(FetchAllComic()),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text("All Mangas"),
          ),
          body: BlocBuilder<AllcomicBloc, AllcomicState>(
            builder: (context, state) {
              if (state is AllComicError) {
                return ErrorMessage(
                  message: state.message,
                  isSliver: false,
                );
              }
              if (state is AllComicLoading) {
                return const LoadingIndicator();
              }

              if (state is AllComicLoaded) {
                return ListView.builder(
                  itemCount: state.allComics.length,
                  itemBuilder: (BuildContext context, int index) {
                    String genre = state.allComics[index].genres
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
                                                          .allComics[index])));
                                    },
                                    child: ImageWidget(
                                      image: state.allComics[index].coverPhoto,
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
                                      state.allComics[index].completed
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
                                  Text(state.allComics[index].title,
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w800)),
                                  Text(
                                    genre,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                      "${state.allComics[index].episodeCount} Episodes"),
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
