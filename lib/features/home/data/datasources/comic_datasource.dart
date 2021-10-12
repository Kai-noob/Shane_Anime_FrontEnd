import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';

import '../../domain/entities/comic.dart';

abstract class ComicRemoteDataSource {
  Future<List<Comic>> getRecentComic();
  Future<List<Comic>> getHotComic();
  Future<List<Comic>> getCompleteComic();
  Future<List<Episodes>> getEpisodes(String comicId);
  Future<List<Photos>> getPhotos(String comicId, String episodeName);
}
