import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/genre/genre.dart';

abstract class IGenreRepository {
  Future<Either<ComicFailure, List<Genre>>> getGenres();
}
