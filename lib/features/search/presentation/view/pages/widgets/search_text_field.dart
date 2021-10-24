import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import '../../../bloc/search_bloc.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade300),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        textInputAction: TextInputAction.search,
        controller: textEditingController,
        cursorColor: Colors.black,
        onSubmitted: (value) {
          BlocProvider.of<SearchBloc>(context).add(SearchComicEvent(value));

          // textEditingController.clear();
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
