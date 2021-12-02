import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/search/search_bloc.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      textInputAction: TextInputAction.search,
      controller: textEditingController,
      cursorColor: Colors.white,
      onSubmitted: (value) {
        textEditingController.text.isNotEmpty
            ? BlocProvider.of<SearchBloc>(context)
                .add(SearchEvent.searchComics(value))
            : null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        hintStyle: const TextStyle(color: Colors.white),
        hintText: "Search",
        filled: true,
        fillColor: Colors.black54.withOpacity(0.6),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}
