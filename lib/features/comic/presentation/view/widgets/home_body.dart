import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../configs/strings/strings.dart';
import '../pages/list_screen.dart';

import 'home_scroll_widget.dart';
import 'image_slider.dart';

class HomeBody extends StatelessWidget {
  final List images = [
    "assets/images/animeone.jpeg",
    "assets/images/animefour.jpeg",
    "assets/images/animethree.jpeg",
    "assets/images/animethree.jpeg",
    "assets/images/animethree.jpeg",
    "assets/images/animethree.jpeg",
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
        buildRecentText("Daily Update", context),
        const SizedBox(
          height: 10,
        ),
        HorizontalScrollWidget(),
        const SizedBox(
          height: 10,
        ),
        buildRecentText("Hot Mangas", context),
        const SizedBox(
          height: 10,
        ),
        HorizontalScrollWidget(),
        const SizedBox(
          height: 10,
        ),
        buildRecentText("Completed Series", context),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 400,
          child: GridView.count(
            physics: const ClampingScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.6,
            children: images
                .map((item) => Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(item), fit: BoxFit.cover)),
                        ),
                        const Text(
                          label2,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ))
                .toList(),
          ),
        ),
        buildRecentText("Completed Series", context),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 400,
          child: GridView.count(
            physics: const ClampingScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 15,
            childAspectRatio: 0.6,
            children: images
                .map((item) => Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(item), fit: BoxFit.cover)),
                        ),
                        const Text(
                          label15,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        )
                      ],
                    ))
                .toList(),
          ),
        ),
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
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.w400,
                    fontSize: 15)))
      ],
    );
  }
}
