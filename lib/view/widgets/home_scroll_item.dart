import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/view/home/details_screen.dart';

class HomeScrollItem extends StatelessWidget {
  final String image;
  final String label;
  const HomeScrollItem({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => DetailsScreen(image: image));
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(image))),
          ),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 16),
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
