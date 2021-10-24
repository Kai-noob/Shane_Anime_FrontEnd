import 'package:movie_app/features/home/domain/entities/episodes.dart';

import '../../domain/entities/comic.dart';

import '../../domain/entities/photos.dart';

abstract class ComicRemoteDataSource {
  Future<List<RecentEpisode>> getRecentEpisodes();
  Future<List<Comic>> getHotComic();
  Future<List<Comic>> getCompleteComic();
  Future<List<RecentEpisode>> getEpisodes(String comicId);
  Future<List<String>> getImages(String comicId, String episodeName);

  Future<String> getPdf(String comicId, String episodeName);

  Future<bool> checkPdfOrImage(String comicId, String episodeName);
}
