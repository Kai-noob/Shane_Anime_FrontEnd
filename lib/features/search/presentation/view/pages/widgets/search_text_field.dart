import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
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
    return TextField(
        textInputAction: TextInputAction.search,
        controller: textEditingController,
        onSubmitted: (value) {
          searchComicController.searchComicsFromDB(query: value);
          textEditingController.clear();
        },
        decoration: const InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(
            EvaIcons.searchOutline,
            color: Colors.deepPurpleAccent,
          ),
          contentPadding: EdgeInsets.all(10),
        ));
  }
}
