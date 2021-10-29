import '../../domain/entities/episodes.dart';

import '../../domain/entities/comic.dart';

abstract class ComicRemoteDataSource {
  Future<List<Episode>> getFilteredEpisodes(String datetime);
  Future<List<Comic>> getHotAllComic();
  Future<List<Comic>> getCompleteAllComic();
  Future<List<Episode>> getEpisodes(String comicId);
  Future<List<String>> getImages(
      String comicId, String episodeName, int episodeNumber);

  Future<String> getPdf(String comicId, String episodeName, int episodeNumber);

  Future<bool> checkPdfOrImage(
      String comicId, String episodeName, int episodeNumber);

  Future<List<Comic>> getHotLimitComic();
  Future<List<Comic>> getCompleteLimitComic();
  Future<List<Episode>> getRecentLimitEpisode();
}
