import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../application/search/search_bloc.dart';

import '../../injection.dart';
import 'components/search_result_list_view.dart';
import 'components/search_text_field.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
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
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.w),
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
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
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
