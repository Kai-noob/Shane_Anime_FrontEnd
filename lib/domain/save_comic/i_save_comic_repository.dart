import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/save_comic/save_comic.dart';

abstract class ISaveComicRepository {
  Stream<Either<ComicFailure, List<SaveComics>>> watchSaveComics();
  Future<Either<ComicFailure, Unit>> saveComic(String comicId);
  Future<Either<ComicFailure, Unit>> removeComic(String comicId);
}
