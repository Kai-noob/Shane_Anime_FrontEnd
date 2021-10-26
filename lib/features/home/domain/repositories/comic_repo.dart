import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../entities/episodes.dart';
import '../../../../core/error/failure.dart';

import '../entities/comic.dart';

abstract class ComicRepo {
  Future<Either<Failure, List<Episode>>> getRecentEpisodes();
  Future<Either<Failure, List<Comic>>> getCompletedComics();
  Future<Either<Failure, List<Comic>>> getHotComics();
  Future<Either<Failure, List<Episode>>> getEpisodes(String comicId);

  Future<Either<Failure, List<Episode>>> getFilteredEpisodes(DateTime datetime);
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
