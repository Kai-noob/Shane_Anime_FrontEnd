import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/global/loading_indicator.dart';
import '../../domain/entities/genre.dart';
import '../controllers/genre_controller.dart';

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
          if (_genreController.isComicByGenreLoading) {
            return const LoadingIndicator();
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
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 5),
                ],
              );
            },
          );
        }));
  }
}
