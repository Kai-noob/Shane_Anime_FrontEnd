import '../../domain/entities/episodes.dart';

import '../../domain/entities/comic.dart';

abstract class ComicRemoteDataSource {
  Future<List<Episode>> getRecentAllEpisodes();
  Future<List<Episode>> getFilteredEpisodes(DateTime datetime);
  Future<List<Comic>> getHotAllComic();
  Future<List<Comic>> getCompleteAllComic();
  Future<List<Episode>> getEpisodes(String comicId);
  Future<List<String>> getImages(String comicId, String episodeName);

  Future<String> getPdf(String comicId, String episodeName);

  Future<bool> checkPdfOrImage(String comicId, String episodeName);

  Future<List<Comic>> getHotLimitComic();
  Future<List<Comic>> getCompleteLimitComic();
  Future<List<Episode>> getRecentLimitEpisode();
}
