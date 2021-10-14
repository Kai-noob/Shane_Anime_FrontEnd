import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../../domain/entities/episodes.dart';
import '../../../../controllers/photo_controller.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ReadingView extends StatelessWidget {
  const ReadingView({
    Key? key,
    required PhotoController photoController,
    required this.episodes,
  })  : _photoController = photoController,
        super(key: key);

  final PhotoController _photoController;
  final Episodes episodes;

  @override
  Widget build(BuildContext context) {
    _photoController.getPhotos(episodes.comicId, episodes.episodeName);
    return Obx(() {
      if (_photoController.isLoading) {
        return const LoadingIndicator();
      }
      return PhotoViewGallery.builder(
          scrollDirection: Axis.vertical,
          itemCount: _photoController.photoList.length,
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
                initialScale: PhotoViewComputedScale.contained,
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.contained * 4,
                imageProvider: NetworkImage(_photoController.photoList[index]));
          });
    });
  }
}
