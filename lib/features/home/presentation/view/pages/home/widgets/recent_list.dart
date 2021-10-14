import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../controllers/recent_controller.dart';
import 'recent_item.dart';

class RecentList extends StatelessWidget {
  final RecentController _recentController = Get.find<RecentController>();
  RecentList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Obx(() {
          if (_recentController.isLoading) {
            return const LoadingIndicator();
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
