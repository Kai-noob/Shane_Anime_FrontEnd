import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/view/home/details_screen.dart';

class HomeRowItem extends StatelessWidget {
  final String image;
  final String label;
  const HomeRowItem({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => DetailsScreen(image: image));
            },
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
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
