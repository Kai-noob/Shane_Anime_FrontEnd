import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';

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
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getCompletedComics() async {
    try {
      final List<Comic> completeComics =
          await remoteDataSource.getCompleteComic();
      return Right(completeComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getHotComics() async {
    try {
      final List<Comic> hotComics = await remoteDataSource.getHotComic();
      return Right(hotComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Episodes>>> getEpisodes(String comicId) async {
    try {
      final List<Episodes> episodes =
          await remoteDataSource.getEpisodes(comicId);
      return Right(episodes);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<String>>> getPhotos(
      String comicId, String episodeName) async {
    try {
      final List<String> episodes =
          await remoteDataSource.getPhotos(comicId, episodeName);
      return Right(episodes);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
