import 'package:dartz/dartz.dart';
import 'comic.dart';
import 'comic_failure.dart';
import '../episodes/episodes.dart';

abstract class IComicRepository {
  Future<Either<ComicFailure, List<Comic>>> getMoreCompletedComics();
  Future<Either<ComicFailure, List<Comic>>> getHomeCompletedComics();
  Future<Either<ComicFailure, List<Comic>>> getMoreHotComics();
  Future<Either<ComicFailure, List<Comic>>> getHomeHotComics();
  Future<Either<ComicFailure, List<Comic>>> getMoreAllComics();
  Future<Either<ComicFailure, List<Comic>>> getHomeAllComics();
  Future<Either<ComicFailure, Comic>> getComicDetails(String comicId);
  Future<Either<ComicFailure, List<Comic>>> searchComics(String title);
  Future<Either<ComicFailure, List<Episodes>>> getDailyEpisodes();
  Future<Either<ComicFailure, Episodes>> getPdf(
      String comicId, String episodeName, int episodeNumber);
  Future<bool> checkPdf(String comicId, String episodeName, int episodeNumber);
  Future<Either<ComicFailure, Episodes>> getEpisode(String episodeId);
}
