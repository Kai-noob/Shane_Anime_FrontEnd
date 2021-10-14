import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/home/presentation/view/pages/reading/binding/photo_binding.dart';
import '../../../../../../../core/global/loading_indicator.dart';
import '../../../../controllers/episode_controller.dart';

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
                children: [
                  Row(
                    children: [
                      Text(comicModel.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Comedy",
                            style: TextStyle(color: Colors.red),
                          ))
                    ],
                  ),
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
                    Tab(text: "Review"),
                    Tab(text: "Episodes"),
                  ],
                ),
              ),
              // pinned: true,
            ),
          ];
        },
        body: TabBarView(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Text(
              comicModel.review,
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
        return const LoadingIndicator();
      }
      return ListView.builder(
        itemCount: _episodeController.episodeList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_episodeController.episodeList[index].episodeName),
            onTap: () {
              Get.to(
                  () => ReadingScreen(
                      photos: _episodeController.episodeList[index]),
                  binding: PhotoBinding());
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
