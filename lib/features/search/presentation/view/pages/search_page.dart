import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/configs/common/image_widget.dart';
import 'package:movie_app/configs/common/loading_indicator.dart';
import 'package:movie_app/features/search/presentation/controllers/search_comic_controller.dart';

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
