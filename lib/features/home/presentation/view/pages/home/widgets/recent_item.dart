import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/global/image_widget.dart';
import '../../../../../binding/home_binding.dart';
import '../../../../../domain/entities/comic.dart';
import '../../details/details_screen.dart';

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
              height: 130,
              width: 150,
              child: ImageWidget(image: comicModel.coverPhoto),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            comicModel.title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
