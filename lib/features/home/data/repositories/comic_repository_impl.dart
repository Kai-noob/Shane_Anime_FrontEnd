import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/failure.dart';

import '../../domain/entities/comic.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/entities/photos.dart';
import '../../domain/repositories/comic_repo.dart';
import '../datasources/comic_datasource.dart';

class ComicRepoImpl implements ComicRepo {
  final ComicRemoteDataSource remoteDataSource;

  ComicRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<Comic>>> getRecentComics() async {
    try {
      final List<Comic> recentComics = await remoteDataSource.getRecentComic();
      return Right(recentComics);
    } on FirebaseException catch (error) {
      return Left(FirebaseFailure(errorCode: error.code));
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getCompletedComics() async {
    try {
      final List<Comic> completeComics =
          await remoteDataSource.getCompleteComic();
      return Right(completeComics);
    } on FirebaseException catch (error) {
      return Left(FirebaseFailure(errorCode: error.code));
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getHotComics() async {
    try {
      final List<Comic> hotComics = await remoteDataSource.getHotComic();
      return Right(hotComics);
    } on FirebaseException catch (error) {
      return Left(FirebaseFailure(errorCode: error.code));
    }
  }

  @override
  Future<Either<Failure, List<Episodes>>> getEpisodes(String comicId) async {
    try {
      final List<Episodes> episodes =
          await remoteDataSource.getEpisodes(comicId);
      return Right(episodes);
    } on FirebaseException catch (error) {
      return Left(FirebaseFailure(errorCode: error.code));
    }
  }

  @override
  Future<Either<Failure, List<Photos>>> getPhotos(
      String comicId, String episodeName) async {
    try {
      final List<Photos> episodes =
          await remoteDataSource.getPhotos(comicId, episodeName);
      return Right(episodes);
    } on FirebaseException catch (error) {
      return Left(FirebaseFailure(errorCode: error.code));
    }
  }
}
