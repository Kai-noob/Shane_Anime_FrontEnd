import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';

import '../../controllers/search_comic_controller.dart';
import 'widgets/search_result_list_view.dart';
import 'widgets/search_text_field.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  final SearchComicController searchComicController =
      Get.find<SearchComicController>();

  final GenreController genreController = Get.find<GenreController>();
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: SearchTextField(
                textEditingController: textEditingController,
                searchComicController: searchComicController),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(() {
              if (genreController.isLoading) {
                return LoadingIndicator();
              }
              return Row(
                  children: genreController.genreList
                      .map((e) =>
                          ActionChip(label: Text(e.name), onPressed: () {}))
                      .toList());
            }),
          ),
          SearchResultListView(searchComicController: searchComicController)
        ],
      )),
    );
  }
}
