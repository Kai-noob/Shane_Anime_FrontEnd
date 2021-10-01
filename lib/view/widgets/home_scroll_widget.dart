import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/configs/common/loading_indicator.dart';
import 'package:movie_app/core/viewmodel/comic_view_model.dart';

import 'home_scroll_item.dart';

class HorizontalScrollWidget extends StatelessWidget {
  const HorizontalScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ComicViewModel>(
        init: Get.find<ComicViewModel>(),
        builder: (controller) {
          if (controller.loading) {
            return LoadingIndicator();
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: controller.comics
                    .map((e) =>
                        HomeScrollItem(image: e.coverPhoto, label: e.title))
                    .toList()),
          );
        });
  }
}
