import 'package:dartz/dartz.dart';
import '../comic/comic.dart';
import '../comic/comic_failure.dart';
import 'genre.dart';

abstract class IGenreRepository {
  Future<Either<ComicFailure, List<Genre>>> getGenres();
  Future<Either<ComicFailure, List<Comic>>> getComicsByGenres(String genreId);
  Future<Either<ComicFailure, List<Genre>>> getComicGenres(String comicId);
}
