import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/controllers/comic_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/hot_controller.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';

class HotList extends StatelessWidget {
  final HotController _hotController = Get.find<HotController>();
  HotList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (_hotController.isLoading) {
        return SliverToBoxAdapter(
          child: LoadingIndicator(),
        );
      }
      return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: ImageWidget(
                  image: _hotController.hotComicList[index].coverPhoto,
                ),
              ),
              Text(
                _hotController.hotComicList[index].title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ],
          );
        }, childCount: _hotController.hotComicList.length),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      );
    });
  }
}
