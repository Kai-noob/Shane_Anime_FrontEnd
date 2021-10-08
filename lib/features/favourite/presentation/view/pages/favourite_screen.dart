import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../configs/common/image_widget.dart';
import '../../../../../configs/common/loading_indicator.dart';
import '../../controllers/favourite_comic_controller.dart';
import '../../../../comic/presentation/view/widgets/home_scroll_item.dart';
import '../../../../comic/presentation/view/pages/details_screen.dart';

class FavouriteScreen extends StatelessWidget {
  final FavouriteComicController favouriteComicController =
      Get.find<FavouriteComicController>();
  FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
        centerTitle: true,
      ),
      // body: Obx(() => favouriteComicController.favouriteList.isEmpty
      //     ? Center(
      //         child: Text("No Favourite"),
      //       )
      //     : SingleChildScrollView(
      //         child: Column(
      //             children: favouriteComicController.favouriteList
      //                 .map((e) => Padding(
      //                       padding:
      //                           const EdgeInsets.symmetric(horizontal: 15.0),
      //                       child: Column(
      //                         children: [
      //                           GestureDetector(
      //                             onTap: () {
      //                               // Get.to(() => DetailsScreen(comicModel: comicModel, image: image));
      //                             },
      //                             child: SizedBox(
      //                               height: 200,
      //                               width: 200,
      //                               child: ImageWidget(image: e.coverPhoto),
      //                             ),
      //                           ),
      //                           Row(
      //                             children: [
      //                               Text(
      //                                 e.title,
      //                                 style: const TextStyle(fontSize: 16),
      //                                 overflow: TextOverflow.ellipsis,
      //                               ),
      //                               IconButton(
      //                                   onPressed: () {
      //                                     // Get.find<FavouriteComicController>()
      //                                     //     .toggleFavourite(e);
      //                                   },
      //                                   icon: Icon(Icons.close))
      //                             ],
      //                           ),
      //                           const SizedBox(height: 5),
      //                         ],
      //                       ),
      //                     ))
      //                 .toList()),
      //       )),
    );
  }
}
