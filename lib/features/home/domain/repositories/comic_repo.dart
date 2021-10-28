import 'package:dartz/dartz.dart';

import '../entities/episodes.dart';
import '../../../../core/error/failure.dart';

import '../entities/comic.dart';

abstract class ComicRepo {
  Future<Either<Failure, List<Episode>>> getLimitRecentEpisodes();
  Future<Either<Failure, List<Comic>>> getLimitCompletedComics();
  Future<Either<Failure, List<Comic>>> getLimitHotComics();

  Future<Either<Failure, List<Comic>>> getAllCompleteComics();
  Future<Either<Failure, List<Comic>>> getAllHotComics();
  Future<Either<Failure, List<Episode>>> getEpisodes(String comicId);

  Future<Either<Failure, List<Episode>>> getFilteredEpisodes(String datetime);
  Future<Either<Failure, List<String>>> getImages(
    String comicId,
    String episodeName,
  );

  Future<Either<Failure, String>> getPdf(
    String comicId,
    String episodeName,
  );

  Future<bool> checkPdforImages(
    String comicId,
    String episodeName,
  );
}
