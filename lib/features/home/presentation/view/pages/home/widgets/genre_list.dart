import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/comic_controller.dart';
import 'package:movie_app/features/home/presentation/view/pages/home/widgets/recent_item.dart';
import 'package:movie_app/features/home/presentation/view/pages/list/list_screen.dart';

class GenreList extends StatelessWidget {
  final GenreController _genreController = Get.find<GenreController>();
  GenreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Obx(() {
          if (_genreController.isLoading) {
            return LoadingIndicator();
          }
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: _genreController.genreList.map((e) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(GenreScreen(
                          genre: e,
                        ));
                      },
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(e.image),
                      ),
                    ),
                    Text(e.name)
                  ],
                ),
              );
            }).toList()),
          );
        }),
      ),
    );
  }
}
