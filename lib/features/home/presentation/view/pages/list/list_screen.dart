import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text("Editor's Choice"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/animeone.jpeg"))),
                ),
                const Text("Demon Slayer", style: TextStyle(fontSize: 16)),
                const SizedBox(height: 5),
              ],
            );
          },
        ));
  }
}

class GenreScreen extends StatelessWidget {
  final Genre genre;

  final GenreController _genreController = Get.find<GenreController>();

  GenreScreen({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _genreController.getComicByGenres(genre.id);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Get.back();
            },
          ),
          title: Text(genre.name),
        ),
        body: Obx(() {
          if (_genreController.isLoadingTest) {
            return LoadingIndicator();
          }
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: _genreController.comicByGenreList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(_genreController
                                .comicByGenreList[index].coverPhoto))),
                  ),
                  Text(_genreController.comicByGenreList[index].title,
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(height: 5),
                ],
              );
            },
          );
        }));
  }
}
