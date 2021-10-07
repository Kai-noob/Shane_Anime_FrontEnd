import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/comic/domain/entities/comic.dart';
import 'package:movie_app/features/comic/presentation/controllers/comic_controller.dart';
import 'package:movie_app/features/favourite/data/models/favourite_comic_model.dart';
import 'package:movie_app/features/favourite/presentation/controllers/favourite_comic_controller.dart';

import 'package:movie_app/features/comic/presentation/view/pages/reading_screen.dart';
import '../../../../../configs/common/image_widget.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.image, required this.comicModel})
      : super(key: key);

  final String image;
  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    final FavouriteComicController controller =
        Get.find<FavouriteComicController>();

    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.deepPurpleAccent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  controller.addFavourite(FavouriteComicModel(
                      title: comicModel.title,
                      coverPhoto: comicModel.coverPhoto,
                      description: comicModel.review,
                      editorChoice: comicModel.editorChoice));

                  print(comicModel.isFavourite);
                },
                icon: Icon(
                  true ? EvaIcons.heart : EvaIcons.heartOutline,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    EvaIcons.shareOutline,
                    color: Colors.white,
                    size: 28,
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, shape: const StadiumBorder()),
                  onPressed: () {},
                  child: const Text("Continue Reading"))
            ],
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            physics: const ClampingScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  expandedHeight: 200,
                  floating: true,
                  pinned: true,
                  elevation: 0.0,
                  title: Text(
                    comicModel.title,
                    style: TextStyle(
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Text("Presented by Shane Manga")
                    ],
                  ),
                )),
                SliverPersistentHeader(
                  delegate: _SliverAppBarDelegate(
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
                    title: Text("Chapter1"),
                    onTap: () {
                      Get.to(() => ReadingScreen());
                    },
                    leading: Icon(
                      EvaIcons.bookOpen,
                      color: Colors.deepPurpleAccent,
                    ),
                    trailing: Text("Free"),
                  );
                },
              ),
            ]),
          ),
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
