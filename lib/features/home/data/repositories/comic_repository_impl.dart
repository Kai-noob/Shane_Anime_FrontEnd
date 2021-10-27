import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';

import '../../domain/entities/comic.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/repositories/comic_repo.dart';
import '../datasources/comic_datasource.dart';

class ComicRepoImpl implements ComicRepo {
  final ComicRemoteDataSource remoteDataSource;

  ComicRepoImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<Episode>>> getAllRecentEpisodes() async {
    try {
      final List<Episode> recentEpisodes =
          await remoteDataSource.getRecentAllEpisodes();
      return Right(recentEpisodes);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getAllCompleteComics() async {
    try {
      final List<Comic> completeComics =
          await remoteDataSource.getCompleteAllComic();
      return Right(completeComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getAllHotComics() async {
    try {
      final List<Comic> hotComics = await remoteDataSource.getHotAllComic();
      return Right(hotComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Episode>>> getEpisodes(String comicId) async {
    try {
      final List<Episode> episodes =
          await remoteDataSource.getEpisodes(comicId);
      return Right(episodes);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<String>>> getImages(
      String comicId, String episodeName) async {
    try {
      final List<String> images =
          await remoteDataSource.getImages(comicId, episodeName);
      return Right(images);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getPdf(
      String comicId, String episodeName) async {
    try {
      final String pdfFile =
          await remoteDataSource.getPdf(comicId, episodeName);
      return Right(pdfFile);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<bool> checkPdforImages(String comicId, String episodeName) {
    return remoteDataSource.checkPdfOrImage(comicId, episodeName);
  }

  @override
  Future<Either<Failure, List<Episode>>> getFilteredEpisodes(
      DateTime datetime) async {
    try {
      final List<Episode> filteredEpisodes =
          await remoteDataSource.getFilteredEpisodes(datetime);
      return Right(filteredEpisodes);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getLimitCompletedComics() async {
    try {
      final List<Comic> completeComics =
          await remoteDataSource.getCompleteLimitComic();
      return Right(completeComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Comic>>> getLimitHotComics() async {
    try {
      final List<Comic> hotComics = await remoteDataSource.getHotLimitComic();
      return Right(hotComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Episode>>> getLimitRecentEpisodes() async {
    try {
      final List<Episode> recentEpisodes =
          await remoteDataSource.getRecentLimitEpisode();
      return Right(recentEpisodes);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
