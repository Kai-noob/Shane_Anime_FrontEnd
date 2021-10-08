import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/common/image_widget.dart';
import 'package:movie_app/features/home/domain/entities/comic.dart';

import '../../reading/reading_screen.dart';
import 'detial_sliver_delegate.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.comicModel,
    required this.image,
  }) : super(key: key);

  final Comic comicModel;
  final String image;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        physics: const ClampingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              floating: true,
              pinned: true,
              elevation: 0.0,
              title: Text(
                comicModel.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Get.back();
                },
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: ImageWidget(
                  image: image,
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Demon Slayer",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10),
                  Text("Presented by Shane Manga")
                ],
              ),
            )),
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(
                const TabBar(
                  indicatorColor: Colors.deepPurpleAccent,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: [
                    Tab(
                        icon: Icon(
                          Icons.reviews_outlined,
                          size: 28,
                        ),
                        text: "Review"),
                    Tab(
                        icon: Icon(
                          EvaIcons.list,
                          size: 28,
                        ),
                        text: "Episodes"),
                  ],
                ),
              ),
              // pinned: true,
            ),
          ];
        },
        body: TabBarView(children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Text(
              "industry. Lorem Ipsumdustry. Lorem Ipsum has dustry. Lorem Ipsum has been ing versions of Los of Lorem Ipsumdustry. Lorem Ipsum has been ing versions of Los of Lorem Ipsumdustry. Lorem Ipsum has been ing versions of Los of Lorem Ipsumbeen ing versions of Los of Lorem Ipsumdustry. Lorem Ipsum has been ing versions of Los of Lorem Ipsumdustry. Lorem Ipsum has been ing versions of Los of Lorem Ipsumdustry. Lorem Ipsum has been ing versions of Los of Lorem Ipsum has been ing versions of Los of Lorem Ipsum",
              style: TextStyle(
                  height: 2.0, fontWeight: FontWeight.w500, fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          ),
          ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: const Text("Chapter1"),
                onTap: () {
                  Get.to(() => const ReadingScreen());
                },
                leading: const Icon(
                  EvaIcons.bookOpen,
                  color: Colors.deepPurpleAccent,
                ),
                trailing: const Text("Free"),
              );
            },
          ),
        ]),
      ),
    );
  }
}
