import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/global/image_widget.dart';
import '../../../../../core/global/loading_indicator.dart';
import '../../../../home/presentation/controllers/hot_controller.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);
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
                    return const LoadingIndicator();
                  }

                  return SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: ImageWidget(
                              image: controller.hotComicList[index].coverPhoto,
                            ),
                          ),
                          Text(
                            controller.hotComicList[index].title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                        ],
                      );
                    }, childCount: controller.hotComicList.length),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                  );
                })
          ],
        ));
  }
}
