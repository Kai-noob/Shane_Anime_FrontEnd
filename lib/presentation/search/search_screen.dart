import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:startapp/startapp.dart';
import '../../application/search/search_bloc.dart';

import '../../injection.dart';
import 'components/search_result_list_view.dart';
import 'components/search_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController textEditingController = TextEditingController();

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
        bottomNavigationBar: AdBanner(),
      ),
    );
  }
}
