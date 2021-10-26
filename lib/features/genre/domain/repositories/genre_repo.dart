import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../../../home/domain/entities/comic.dart';

import '../entities/genre.dart';

abstract class GenreRepo {
  Future<Either<Failure, List<Genre>>> getGenres();

  Future<Either<Failure, List<Genre>>> getGenre(String comicId);

  Future<Either<Failure, List<Comic>>> getComics(String genreId);
}
