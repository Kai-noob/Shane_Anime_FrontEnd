import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';
import '../../../../../domain/entities/comic.dart';
import 'package:shimmer/shimmer.dart';

class DetailsTitle extends StatelessWidget {
  final GenreController _genreController = Get.find<GenreController>();
  DetailsTitle({
    Key? key,
    required this.comicModel,
  }) : super(key: key);

  final Comic comicModel;

  @override
  Widget build(BuildContext context) {
    _genreController.getGenresByComic(comicModel.id);
    return SliverToBoxAdapter(
        child: Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(comicModel.title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Obx(() {
            if (_genreController.isLoading) {
              return LoadingIndicator();
            }
            return Row(
              children: _genreController.genreByComicList
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Chip(
                          labelPadding: EdgeInsets.zero,
                          backgroundColor: Color(0xfffa411b).withOpacity(0.6),
                          labelStyle: TextStyle(color: Colors.white),
                          label: Text(e.name),
                        ),
                      ))
                  .toList(),
            );
          }),
          const SizedBox(height: 10),
          const Text("Presented by Shane Manga")
        ],
      ),
    ));
  }
}
