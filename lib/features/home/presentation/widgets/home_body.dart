import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/configs/strings/strings.dart';
import 'package:movie_app/features/home/presentation/pages/details_screen.dart';
import 'package:movie_app/features/home/presentation/pages/list_screen.dart';

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
        const SizedBox(
          height: 10,
        ),
        buildRecentText("Editor's Choice", context),
        const SizedBox(
          height: 10,
        ),
        const HorizontalScrollWidget(),
        const SizedBox(
          height: 10,
        ),
        buildRecentText("Completed Series", context),
        const SizedBox(
          height: 10,
        ),
        const HorizontalRowWidget(
          image1: image9,
          label1: label7,
          image2: image10,
          label2: label8,
        ),
        const HorizontalRowWidget(
          image1: image11,
          label1: label7,
          image2: image12,
          label2: label8,
        ),
        buildRecentText("Special Collection", context),
        const SizedBox(
          height: 10,
        ),
        const HorizontalRowWidget(
          image1: image13,
          label1: label7,
          image2: image14,
          label2: label8,
        ),
        const HorizontalRowWidget(
          image1: image7,
          label1: label7,
          image2: image8,
          label2: label8,
        ),
        buildRecentText("All Series", context),
        const SizedBox(
          height: 10,
        ),
        const HorizontalRowWidget(
          image1: image7,
          label1: label7,
          image2: image8,
          label2: label8,
        ),
        const HorizontalRowWidget(
          image1: image7,
          label1: label7,
          image2: image8,
          label2: label8,
        ),
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

class HorizontalScrollWidget extends StatelessWidget {
  const HorizontalScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          HomeListItemTwo(image: image1, label: label5),
          HomeListItemTwo(image: image2, label: label16),
          HomeListItemTwo(image: image3, label: label10),
          HomeListItemTwo(image: image4, label: label4),
        ],
      ),
    );
  }
}

class HorizontalRowWidget extends StatelessWidget {
  final String image1;
  final String label1;
  final String image2;
  final String label2;
  const HorizontalRowWidget({
    Key? key,
    required this.image1,
    required this.label1,
    required this.image2,
    required this.label2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HomeListItemWidget(image: image1, label: label1),
        HomeListItemWidget(image: image2, label: label2),
      ],
    );
  }
}

class HomeListItemWidget extends StatelessWidget {
  final String image;
  final String label;
  const HomeListItemWidget({
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

class HomeListItemTwo extends StatelessWidget {
  final String image;
  final String label;
  const HomeListItemTwo({
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
    );
  }
}
