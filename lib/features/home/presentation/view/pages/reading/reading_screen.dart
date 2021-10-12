import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/presentation/controllers/episode_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/photo_controller.dart';
import '../../../../../../core/strings/strings.dart';
import 'widgets/reading_nav_bar.dart';

import 'package:photo_view/photo_view.dart';

// class ReadingScreen extends StatefulWidget {

//   ReadingScreen({Key? key, required this.photos}) : super(key: key);

//   @override
//   State<ReadingScreen> createState() => _ReadingScreenState();
// }

// class _ReadingScreenState extends State<ReadingScreen> {
//   @override
//   void initState() {
//     widget._episodeController
//         .getPhotos(widget.photos.comicId, widget.photos.episodeName);
//     super.initState();
//     currentPage = 0;
//   }

//   final pageController = PageController();

//   late int currentPage;

//   @override
//   Widget build(BuildContext context) {

class ReadingScreen extends StatelessWidget {
  final PhotoController _photoController = Get.find<PhotoController>();

  final Episodes photos;
  ReadingScreen({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _photoController.getPhotos(photos.episodeName, photos.comicId);

    print(photos.comicId);

    print(photos.episodeName);

    return Scaffold(
      appBar: AppBar(
        title: const Text("DemonSlayer"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      // bottomNavigationBar: ReadingNavBar(
      //     pageController: pageController, currentPage: currentPage),
      body: Obx(() {
        if (_photoController.isLoading) {
          return LoadingIndicator();
        }
        return PageView.builder(
          onPageChanged: (index) {},
          // controller: pageController,
          scrollDirection: Axis.vertical,
          itemCount: _photoController.imageList.length,
          itemBuilder: (BuildContext context, int index) {
            print(
              _photoController.imageList.length,
            );
            print(_photoController.imageList[index]);
            return PhotoView(
              customSize: MediaQuery.of(context).size,
              imageProvider: NetworkImage(_photoController.imageList[index]),
            );
          },
        );
      }),
    );
  }
}
