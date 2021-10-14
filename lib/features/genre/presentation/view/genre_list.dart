import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/global/loading_indicator.dart';
import '../controllers/genre_controller.dart';
import 'genre_screen.dart';

class GenreList extends StatelessWidget {
  final GenreController _genreController = Get.find<GenreController>();
  GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Obx(() {
        if (_genreController.isLoading) {
          return const LoadingIndicator();
        }
        return Wrap(
            children: _genreController.genreList.map(
          (e) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ActionChip(
                    padding: const EdgeInsets.all(2.0),
                    label: Text(e.name),
                    onPressed: () {
                      Get.to(GenreScreen(
                        genre: e,
                      ));
                    },
                    backgroundColor: Colors.purple.withOpacity(0.15)));
          },
        ).toList());
      }),
    );
  }
}
