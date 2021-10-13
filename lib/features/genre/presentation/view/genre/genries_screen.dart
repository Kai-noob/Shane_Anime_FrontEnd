import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';

import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';
import 'package:movie_app/features/genre/presentation/view/genre/widgets/genre_item.dart';

import '../../../../search/presentation/view/pages/search_page.dart';

class GenriesScreen extends StatefulWidget {
  GenriesScreen({Key? key}) : super(key: key);

  @override
  State<GenriesScreen> createState() => _GenriesScreenState();
}

class _GenriesScreenState extends State<GenriesScreen> {
  final GenreController controller = Get.find<GenreController>();

  late String _choiceIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Genre"),
          centerTitle: true,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: IconButton(
                  onPressed: () {
                    Get.to(() => SearchScreen());
                  },
                  icon: const Icon(EvaIcons.searchOutline, size: 30)),
            )
          ],
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            Obx(() {
              if (controller.isLoading) {
                return SliverToBoxAdapter(child: LoadingIndicator());
              }
              return SliverToBoxAdapter(
                  child: Wrap(
                      runSpacing: 6.0,
                      spacing: 12.0,
                      children: controller.genreList
                          .map((e) => ActionChip(
                              label: Text(e.name),
                              onPressed: () {
                                controller.getComicByGenres(e.id);
                              }))
                          .toList()));
            }),
            Obx(() {
              if (controller.isLoadingTest) {
                return SliverToBoxAdapter(child: LoadingIndicator());
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return GeneryItemWIdget(
                      comicByGenre: controller.comicByGenreList[index]);
                }, childCount: controller.comicByGenreList.length),
              );
            })
          ],
        ));
  }
}
