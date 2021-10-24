import 'package:dartz/dartz.dart';

import 'package:movie_app/features/home/domain/entities/episodes.dart';
import '../../../../core/error/failure.dart';

import '../entities/photos.dart';

import '../entities/comic.dart';

abstract class ComicRepo {
  Future<Either<Failure, List<RecentEpisode>>> getRecentComics();
  Future<Either<Failure, List<Comic>>> getCompletedComics();
  Future<Either<Failure, List<Comic>>> getHotComics();
  Future<Either<Failure, List<RecentEpisode>>> getEpisodes(String comicId);
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
