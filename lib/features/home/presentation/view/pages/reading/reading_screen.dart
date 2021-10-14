import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../../../../../../core/global/loading_indicator.dart';
import '../../../../domain/entities/episodes.dart';
import '../../../controllers/photo_controller.dart';

import 'package:photo_view/photo_view.dart';

class ReadingScreen extends StatelessWidget {
  final PhotoController _photoController = Get.find<PhotoController>();

  final Episodes photos;
  ReadingScreen({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: ReadingList(
          photoController: _photoController,
          photos: photos,
        ));
  }
}

class ReadingList extends StatelessWidget {
  const ReadingList({
    Key? key,
    required PhotoController photoController,
    required this.photos,
  })  : _photoController = photoController,
        super(key: key);

  final PhotoController _photoController;
  final Episodes photos;

  @override
  Widget build(BuildContext context) {
    _photoController.getPhotos(photos.comicId, photos.episodeName);
    return Obx(() {
      if (_photoController.isLoading) {
        return LoadingIndicator();
      }
      return PhotoViewGallery.builder(
          scrollDirection: Axis.vertical,
          itemCount: _photoController.imageList.length,
          loadingBuilder: (BuildContext context, ImageChunkEvent? event) {
            return const Center(
              child: LoadingIndicator(),
            );
          },
          builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
                errorBuilder: (
                  BuildContext context,
                  Object error,
                  StackTrace? stackTrace,
                ) {
                  return const Center(
                      child: Center(
                    child: Text("Something Went Wrong"),
                  ));
                },
                // initialScale: PhotoViewComputedScale.contained,
                // minScale: PhotoViewComputedScale.contained,
                // maxScale: PhotoViewComputedScale.contained * 4,
                imageProvider: NetworkImage(_photoController.imageList[index]));
          });
    });
  }
}
