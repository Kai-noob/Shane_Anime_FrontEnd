import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/controllers/comic_controller.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';

class RecentList extends StatelessWidget {
  final ComicController _recentController = Get.find<ComicController>();
  RecentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Obx(() {
          if (_recentController.isLoading) {
            return LoadingIndicator();
          }
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _recentController.recentComicList
                  .map((e) => RecentItem(comicModel: e))
                  .toList(),
            ),
          );
        }),
      ),
    );
  }
}
