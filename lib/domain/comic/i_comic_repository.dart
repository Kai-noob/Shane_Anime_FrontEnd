import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';

abstract class IComicRepository {
  Future<Either<ComicFailure, List<Comic>>> getCompleteComics();
  Future<Either<ComicFailure, List<Comic>>> getHotComics();
  Future<Either<ComicFailure, Comic>> getComicDetails(String comicId);
  Future<Either<ComicFailure, String>> getPdf(
      String comicId, String episodeName, int episodeNumber);
}
