import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';

import '../entities/comic.dart';

abstract class ComicRepo {
  Future<List<Comic>> getRecentComics();
  Future<List<Comic>> getCompletedComics();
  Future<List<Comic>> getHotComics();
  Future<List<Episodes>> getEpisodes(String comicId);
  Future<List<Photos>> getPhotos(
    String comicId,
    String episodeName,
  );
}
