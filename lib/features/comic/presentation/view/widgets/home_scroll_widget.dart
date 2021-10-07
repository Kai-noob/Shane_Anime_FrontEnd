import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/configs/common/loading_indicator.dart';
import 'package:movie_app/features/comic/presentation/controllers/comic_controller.dart';

import 'home_scroll_item.dart';

class HorizontalScrollWidget extends StatelessWidget {
  final ComicController _comicController = Get.find<ComicController>();
  HorizontalScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => _comicController.isLoading
        ? const LoadingIndicator()
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: _comicController.comicList
                    .map((e) => HomeScrollItem(
                        comicModel: e, image: e.coverPhoto, label: e.title))
                    .toList()),
          ));
  }
}
