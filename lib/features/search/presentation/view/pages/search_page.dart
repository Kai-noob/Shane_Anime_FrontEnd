import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/search_text_field.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

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
            ),
          ),
        ],
      )),
    );
  }
}
