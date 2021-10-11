import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/core/strings/strings.dart';

import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';
import 'package:movie_app/features/genre/presentation/view/genre/widgets/genre_item.dart';

import '../../../../search/binding/search_binding.dart';

import '../../../../search/presentation/view/pages/search_page.dart';

class GenriesScreen extends StatefulWidget {
  GenriesScreen({Key? key}) : super(key: key);

  @override
  State<GenriesScreen> createState() => _GenriesScreenState();
}

class _GenriesScreenState extends State<GenriesScreen> {
  final GenreController controller = Get.find<GenreController>();

  int _choiceIndex = 0;

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
                    Get.to(() => SearchScreen(), binding: SearchBinding());
                  },
                  icon: const Icon(EvaIcons.searchOutline, size: 30)),
            )
          ],
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Obx(() {
                if (controller.isLoading) {
                  return LoadingIndicator();
                }
                return Wrap(
                    runSpacing: 6.0,
                    spacing: 12.0,
                    children: controller.genreList
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              controller.getComicByGenres();
                            },
                            child: ChoiceChip(
                                selected: _choiceIndex ==
                                    controller.genreList.indexOf(e),
                                selectedColor: Colors.deepPurpleAccent,
                                backgroundColor: Colors.grey.shade700,
                                onSelected: (bool selected) {
                                  setState(() {
                                    _choiceIndex = selected
                                        ? controller.genreList.indexOf(e)
                                        : 0;
                                  });
                                },
                                labelStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                                label: Text(e.name)),
                          ),
                        )
                        .toList());
              }),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Obx(() {
                  print(controller.comicByGenreList.length);
                  if (controller.comicByGenreList.isEmpty) {
                    return Center(
                      child: Text("No Data"),
                    );
                  }
                  if (controller.isLoadingTest) {
                    return Center(
                        child: CircularProgressIndicator(
                      color: Colors.red,
                    ));
                  }
                  return GeneryItemWIdget(
                      comicByGenre: controller.comicByGenreList[index]);
                });
              }, childCount: controller.comicByGenreList.length),
            )
          ],
        ));
  }
}
