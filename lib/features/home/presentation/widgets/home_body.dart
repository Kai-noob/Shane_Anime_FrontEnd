import 'package:flutter/material.dart';

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
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      children: [
        ImageCarouselWidget(images: images),
        const SizedBox(height: 15),
        buildRecentText("Recent"),
        const SizedBox(
          height: 10,
        ),
        const buildHorizontalListView(),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Categories",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/animeone.jpeg")),
                    Text("Action")
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/animetwo.jpeg")),
                    Text("Material Art")
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/animefour.jpeg")),
                    Text("Comedy")
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage("assets/images/animethree.jpeg")),
                    Text("Time Travel")
                  ],
                )
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        buildRecentText("Editor's Choice"),
        const SizedBox(
          height: 10,
        ),
        const buildHorizontalListView(),
        buildRecentText("Completed Series"),
        const SizedBox(
          height: 10,
        ),
        const buildHorizontalListView(),
      ],
    );
  }

  Row buildRecentText(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        TextButton(
            onPressed: () {},
            child: const Text("View All",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 15)))
      ],
    );
  }
}

// ignore: camel_case_types
class buildHorizontalListView extends StatelessWidget {
  const buildHorizontalListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/animeone.jpeg"))),
              ),
              const Text("Demon Slayer",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Text("Season 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Ep 2",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/animetwo.jpeg"))),
              ),
              const Text("Demon Slayer",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Text("Season 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Ep 2",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/animefour.jpeg"))),
              ),
              const Text("Demon Slayer",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Text("Season 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Ep 2",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
