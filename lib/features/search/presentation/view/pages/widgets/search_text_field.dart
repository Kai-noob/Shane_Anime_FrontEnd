import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../controllers/search_comic_controller.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.textEditingController,
    required this.searchComicController,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final SearchComicController searchComicController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade300),
      child: TextField(
        style: TextStyle(color: Colors.black),
        textInputAction: TextInputAction.search,
        controller: textEditingController,
        cursorColor: Colors.black,
        onSubmitted: (value) {
          searchComicController.searchComicsFromDB(query: value);
          textEditingController.clear();
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 4),
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.black),
          hintText: "Search",
          prefixIcon: Icon(
            Ionicons.search,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
