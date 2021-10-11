import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/controllers/hot_controller.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/hot_list.dart';

class FavouriteScreen extends StatelessWidget {
  final HotController _hotController = Get.find<HotController>();
  FavouriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Favourite"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: CustomScrollView(
          slivers: [
            GetBuilder<HotController>(
                init: Get.find<HotController>(),
                builder: (controller) {
                  if (controller.isLoading) {
                    return LoadingIndicator();
                  }

                  return SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            height: 150,
                            width: 150,
                            child: ImageWidget(
                              image: controller.hotComicList[index].coverPhoto,
                            ),
                          ),
                          Text(
                            controller.hotComicList[index].title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                        ],
                      );
                    }, childCount: controller.hotComicList.length),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                  );
                })
          ],
        ));
  }
}
