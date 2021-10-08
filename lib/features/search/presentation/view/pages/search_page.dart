import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controllers/search_comic_controller.dart';
import 'widgets/search_result_list_view.dart';
import 'widgets/search_text_field.dart';

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
                SearchTextField(
                    textEditingController: textEditingController,
                    searchComicController: searchComicController),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text(
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
          SearchResultListView(searchComicController: searchComicController)
        ],
      )),
    );
  }
}
