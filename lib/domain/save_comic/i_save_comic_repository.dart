import 'package:dartz/dartz.dart';

import '../comic/comic_failure.dart';
import 'save_comic.dart';

abstract class ISaveComicRepository {
  Stream<Either<ComicFailure, List<SaveComics>>> watchSaveComics();
  Future<Either<ComicFailure, Unit>> saveComic(String comicId);
  Future<Either<ComicFailure, Unit>> removeComic(String comicId);
}
