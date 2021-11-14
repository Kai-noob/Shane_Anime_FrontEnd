import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';

abstract class IComicRepository {
  Future<Either<ComicFailure, List<Comic>>> getComics();
}
