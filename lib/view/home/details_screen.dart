import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'reading_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          // appBar: AppBar(
          //   title: const Text("Demon Slayer"),
          //   centerTitle: true,

          // ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                  floating: true,
                  pinned: true,
                  expandedHeight: 250,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Get.snackbar("Shane Manga", "Added to Favourite",
                              duration: const Duration(milliseconds: 1000));
                        },
                        icon: const Icon(EvaIcons.heartOutline))
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  bottom: const TabBar(
                    indicatorColor: Colors.deepOrangeAccent,
                    indicatorSize: TabBarIndicatorSize.label,

                    unselectedLabelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    // labelPadding: EdgeInsets.all(10),
                    labelStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    indicatorWeight: 1.5,
                    tabs: [
                      Tab(
                        text: "Review",
                      ),
                      Tab(
                        text: "Episodes",
                      ),
                    ],
                  )),
              SliverFillRemaining(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Row(
                            children: const [
                              Text(
                                "Presented By",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Shane Manga",
                                style: TextStyle(
                                    color: Colors.deepOrangeAccent,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Review",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            height: 1,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsumindustry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                            style: TextStyle(),
                            textAlign: TextAlign.justify,
                          )
                        ]),
                      ),
                    ),
                    ListView.builder(
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            onTap: () {
                              Get.to(() => const ReadingScreen());
                            },
                            leading: const Icon(
                              Icons.menu_book_outlined,
                              color: Colors.deepOrangeAccent,
                            ),
                            title: const Text("Chapter1"),
                          );
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
