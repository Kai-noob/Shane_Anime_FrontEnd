import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/search/presentation/bloc/bloc/search_bloc.dart';
import '../../../../../configs/common/image_widget.dart';
import '../../../../../configs/common/loading_indicator.dart';
import '../../controllers/search_comic_controller.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchComicController searchComicController =
        Get.find<SearchComicController>();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: TextField(
                        textInputAction: TextInputAction.search,
                        controller: textEditingController,
                        onSubmitted: (value) {
                          searchComicController.searchComicsFromDB(
                              query: value);
                          textEditingController.clear();
                        },
                        decoration: const InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            EvaIcons.searchOutline,
                            color: Colors.deepPurpleAccent,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ))),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (searchComicController.isLoading) {
                return LoadingIndicator();
              }
              if (searchComicController.isEmpty) {
                return Center(
                  child: Text("Ooops Not Found"),
                );
              }
              if (searchComicController.searchComicList.isEmpty) {
                return Center(
                  child: Text("Search"),
                );
              } else {
                return ListView.builder(
                  itemCount: searchComicController.searchComicList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(searchComicController
                            .searchComicList[index].coverPhoto),
                      ),
                      title: Text(
                          searchComicController.searchComicList[index].title),
                    );
                  },
                );
              }
            }),
          )
        ],
      )),
    );
  }
}

class SearchTestScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  SearchTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: TextField(
                        textInputAction: TextInputAction.search,
                        controller: textEditingController,
                        onSubmitted: (value) {
                          BlocProvider.of<SearchBloc>(context)
                              .add(SearchComics(value));
                          textEditingController.clear();
                        },
                        decoration: const InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            EvaIcons.searchOutline,
                            color: Colors.deepPurpleAccent,
                          ),
                          contentPadding: EdgeInsets.all(10),
                        ))),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return LoadingIndicator();
                }
                if (state is SearchInitial) {
                  return Center(
                    child: Text("Start Searching"),
                  );
                }

                if (state is SearchLoaded) {
                  if (state.searchComics.isEmpty) {
                    return Center(
                      child: Text("Ooops No Found"),
                    );
                  }
                  return ListView.builder(
                    itemCount: state.searchComics.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              state.searchComics[index].coverPhoto),
                        ),
                        title: Text(state.searchComics[index].title),
                      );
                    },
                  );
                }
                return Container();
              },
            ),
          )
        ],
      )),
    );
  }
}
