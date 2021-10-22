import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../../../home/domain/entities/comic.dart';

import '../entities/comic_gere.dart';
import '../entities/genre.dart';

abstract class GenreRepo {
  Future<Either<Failure, List<ComicGenre>>> getComicId(String genreId);

  Future<Either<Failure, List<Genre>>> getGenres();

  Future<Either<Failure, Genre>> getGenre(String genreId);

  Future<Either<Failure, Comic>> getComics(String comicId);

  Future<Either<Failure, List<ComicGenre>>> getGenreId(String comicId);
}
