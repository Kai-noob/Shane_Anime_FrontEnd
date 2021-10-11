import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/image_widget.dart';
import 'package:movie_app/features/home/binding/home_binding.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';
import 'package:movie_app/features/home/presentation/view/pages/details/details_screen.dart';

class RecentItem extends StatelessWidget {
  final Comic comicModel;

  const RecentItem({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Get.to(() => DetailsScreen(comicModel: comicModel, image: image));
              Get.to(
                  () => DetailsScreen(
                        image: comicModel.coverPhoto,
                        comicModel: comicModel,
                      ),
                  binding: Binding());
            },
            child: SizedBox(
              height: 200,
              width: 200,
              child: ImageWidget(image: comicModel.coverPhoto),
            ),
          ),
          Text(
            comicModel.title,
            style: const TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
