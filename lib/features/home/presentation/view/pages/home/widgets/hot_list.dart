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
    // return SliverGrid(
    //   delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
    //     return Obx(() {
    //       if (_hotController.isLoading) {
    //         return LoadingIndicator();
    //       }
    //   return Column(
    //     children: [
    //       Container(
    //         height: 150,
    //         width: 150,
    //         child: ImageWidget(
    //           image: _hotController.hotComicList[index].coverPhoto,
    //         ),
    //       ),
    //       Text(
    //         _hotController.hotComicList[index].title,
    //         overflow: TextOverflow.ellipsis,
    //         style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
    //       ),
    //     ],
    //   );
    // });
    //   }, childCount: 4),
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
    // );

    // return SliverFixedExtentList(
    //   itemExtent: _hotController.hotComicList.length.toDouble(),
    //   delegate: SliverChildBuilderDelegate(
    //     (BuildContext context, int index) {
    //       return Column(
    //         children: [
    //           Container(
    //             height: 150,
    //             width: 150,
    //             child: ImageWidget(
    //               image: _hotController.hotComicList[index].coverPhoto,
    //             ),
    //           ),
    //           Text(
    //             _hotController.hotComicList[index].title,
    //             overflow: TextOverflow.ellipsis,
    //             style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
    //           ),
    //         ],
    //       );
    //     },
    //   ),
    // );

    return SliverPadding(
        padding: EdgeInsets.symmetric(vertical: 10),
        sliver: SliverToBoxAdapter(
          child: Obx(() {
            if (_hotController.isLoading) {
              return LoadingIndicator();
            }
            return SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _hotController.hotComicList.length,
                itemBuilder: (BuildContext context, int index) {
                  return RecentItem(
                      comicModel: _hotController.hotComicList[index]);
                },
              ),
            );
          }),
        ));

    // return GetBuilder<HotController>(
    //     init: Get.find<HotController>(),
    //     builder: (controller) {
    //       if (controller.isLoading) {
    //         return LoadingIndicator();
    //       }

    //       return SliverGrid(
    //         delegate:
    //             SliverChildBuilderDelegate((BuildContext context, int index) {
    //           return Column(
    //             children: [
    //               Container(
    //                 height: 150,
    //                 width: 150,
    //                 child: ImageWidget(
    //                   image: controller.hotComicList[index].coverPhoto,
    //                 ),
    //               ),
    //               Text(
    //                 controller.hotComicList[index].title,
    //                 overflow: TextOverflow.ellipsis,
    //                 style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
    //               ),
    //             ],
    //           );
    //         }, childCount: controller.hotComicList.length),
    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //             crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
    //       );
    //     });
  }
}
