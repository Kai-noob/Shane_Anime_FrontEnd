import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/search_bloc.dart';
import 'widgets/search_result_list_view.dart';

import '../../../../injector.dart';
import 'widgets/search_text_field.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(sl()),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: SearchTextField(
                        textEditingController: textEditingController,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
              const SearchResultListView()
            ],
          ),
        )),
      ),
    );
  }
}
