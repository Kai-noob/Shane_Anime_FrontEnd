import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/home/presentation/controllers/episode_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/photo_controller.dart';

import '../../../../../../../core/global/image_widget.dart';
import '../../../../../domain/entities/comic.dart';

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
          EpisodeListView(
            comicId: comicModel.id,
          ),
        ]),
      ),
    );
  }
}

class EpisodeListView extends StatelessWidget {
  final EpisodeController _episodeController = Get.find<EpisodeController>();

  final String comicId;
  EpisodeListView({
    Key? key,
    required this.comicId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _episodeController.getEpisodes(comicId);

    return Obx(() {
      if (_episodeController.isLoading) {
        return LoadingIndicator();
      }
      return ListView.builder(
        itemCount: _episodeController.episodeList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_episodeController.episodeList[index].episodeName),
            onTap: () {
              //  _episodeController.getPhotos(
              //     "Episode2", "D0YNkdW8cZnPEiM9tvOp");
              Get.to(() =>
                  ReadingScreen(photos: _episodeController.episodeList[index]));
            },
            leading: const Icon(
              EvaIcons.bookOpen,
              color: Colors.deepPurpleAccent,
            ),
            trailing: const Text("Free"),
          );
        },
      );
    });
  }
}
