import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/controllers/comic_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/complete_controller.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';

class CompleteList extends StatelessWidget {
  final CompleteController _completeController = Get.find<CompleteController>();
  CompleteList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Obx(() {
          if (_completeController.isLoading) {
            return LoadingIndicator();
          }
          return Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                child: ImageWidget(
                  image:
                      _completeController.completeComicList[index].coverPhoto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _completeController.completeComicList[index].title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ],
          );
        });
      }, childCount: 3),
    );

    // return SliverPadding(
    //     padding: EdgeInsets.symmetric(vertical: 10),
    //     sliver: SliverToBoxAdapter(
    //       child: Obx(() {
    //         if (_completeController.isLoading) {
    //           return LoadingIndicator();
    //         }
    //         return SizedBox(
    //           height: 230,
    //           child: ListView.builder(
    //             scrollDirection: Axis.horizontal,
    //             itemCount: _completeController.completeComicList.length,
    //             itemBuilder: (BuildContext context, int index) {
    //               return RecentItem(
    //                   comicModel: _completeController.completeComicList[index]);
    //             },
    //           ),
    //         );
    //       }),
    //     ));
  }
}
