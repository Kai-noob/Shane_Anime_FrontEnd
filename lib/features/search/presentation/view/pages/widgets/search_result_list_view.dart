import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/global/loading_indicator.dart';
import '../../../controllers/search_comic_controller.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    Key? key,
    required this.searchComicController,
  }) : super(key: key);

  final SearchComicController searchComicController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        if (searchComicController.isLoading) {
          return const LoadingIndicator();
        }
        if (searchComicController.isEmpty) {
          return const Center(
            child: Text("Ooops Not Found"),
          );
        }
        if (searchComicController.searchComicList.isEmpty) {
          return const Center(
            child: Text("Search"),
          );
        } else {
          return ListView.builder(
            itemCount: searchComicController.searchComicList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      searchComicController.searchComicList[index].coverPhoto),
                ),
                title: Text(searchComicController.searchComicList[index].title),
              );
            },
          );
        }
      }),
    );
  }
}
