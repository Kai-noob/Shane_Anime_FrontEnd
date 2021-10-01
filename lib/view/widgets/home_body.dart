import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/configs/common/loading_indicator.dart';
import 'package:movie_app/core/viewmodel/comic_view_model.dart';
import 'package:movie_app/view/home/details_screen.dart';
import 'package:movie_app/view/home/list_screen.dart';

import 'home_list_item.dart';
import 'home_scroll_item.dart';
import 'home_scroll_widget.dart';
import 'image_carousel.dart';

class HomeBody extends StatelessWidget {
  final List images = [
    "assets/images/animeone.jpeg",
    "assets/images/animefour.jpeg",
    "assets/images/animethree.jpeg"
  ];
  HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      children: [
        ImageCarouselWidget(images: images),
        const SizedBox(height: 15),
        buildRecentText("Recent", context),
        const SizedBox(
          height: 10,
        ),
        const HorizontalScrollWidget(),
        // const SizedBox(
        //   height: 10,
        // ),
        // buildRecentText("Editor's Choice", context),
        // const SizedBox(
        //   height: 10,
        // ),
        // const HorizontalScrollWidget(),
        // const SizedBox(
        //   height: 10,
        // ),
        // buildRecentText("Completed Series", context),
        // const SizedBox(
        //   height: 10,
        // ),
        // const HorizontalRowWidget(
        //   image1: image9,
        //   label1: label7,
        //   image2: image10,
        //   label2: label8,
        // ),
        // const HorizontalRowWidget(
        //   image1: image11,
        //   label1: label7,
        //   image2: image12,
        //   label2: label8,
        // ),
        // buildRecentText("Special Collection", context),
        // const SizedBox(
        //   height: 10,
        // ),
        // const HorizontalRowWidget(
        //   image1: image13,
        //   label1: label7,
        //   image2: image14,
        //   label2: label8,
        // ),
        // const HorizontalRowWidget(
        //   image1: image7,
        //   label1: label7,
        //   image2: image8,
        //   label2: label8,
        // ),
        // buildRecentText("All Series", context),
        // const SizedBox(
        //   height: 10,
        // ),
        // const HorizontalRowWidget(
        //   image1: image7,
        //   label1: label7,
        //   image2: image8,
        //   label2: label8,
        // ),
        // const HorizontalRowWidget(
        //   image1: image7,
        //   label1: label7,
        //   image2: image8,
        //   label2: label8,
        // ),
      ],
    );
  }

  Row buildRecentText(String label, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        TextButton(
            onPressed: () {
              Get.to(() => const ListScreen());
            },
            child: const Text("View All",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 15)))
      ],
    );
  }
}
