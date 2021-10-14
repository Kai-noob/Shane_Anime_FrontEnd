import '../entities/episodes.dart';
import '../entities/photos.dart';

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
