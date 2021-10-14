import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../controllers/hot_controller.dart';

class HotList extends StatelessWidget {
  final HotController _hotController = Get.find<HotController>();
  HotList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (_hotController.isLoading) {
        return const SliverToBoxAdapter(
          child: LoadingIndicator(),
        );
      }
      return SliverGrid(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: ImageWidget(
                  image: _hotController.hotComicList[index].coverPhoto,
                ),
              ),
              Text(
                _hotController.hotComicList[index].title,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ],
          );
        }, childCount: _hotController.hotComicList.length),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.9,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
      );
    });
  }
}
