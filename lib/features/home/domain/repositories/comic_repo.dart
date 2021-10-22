import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/episodes.dart';
import '../entities/photos.dart';

import '../entities/comic.dart';

abstract class ComicRepo {
  Future<Either<Failure, List<Comic>>> getRecentComics();
  Future<Either<Failure, List<Comic>>> getCompletedComics();
  Future<Either<Failure, List<Comic>>> getHotComics();
  Future<Either<Failure, List<Episodes>>> getEpisodes(String comicId);
  Future<Either<Failure, List<String>>> getPhotos(
    String comicId,
    String episodeName,
  );
}
