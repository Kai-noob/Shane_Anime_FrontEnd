import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/configs/common/image_widget.dart';
import 'package:movie_app/features/comic/domain/entities/comic.dart';
import 'package:movie_app/helpers/injection/binding.dart';
import 'package:movie_app/features/comic/presentation/view/pages/details_screen.dart';

class HomeScrollItem extends StatelessWidget {
  final String image;
  final Comic comicModel;
  final String label;
  const HomeScrollItem({
    Key? key,
    required this.image,
    required this.label,
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
              child: ImageWidget(image: image),
            ),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
