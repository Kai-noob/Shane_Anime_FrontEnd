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
  Future<Either<Failure, List<RecentEpisode>>> getRecentComics() async {
    try {
      final List<RecentEpisode> recentEpisodes =
          await remoteDataSource.getRecentEpisodes();
      return Right(recentEpisodes);
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
  Future<Either<Failure, List<RecentEpisode>>> getEpisodes(
      String comicId) async {
    try {
      final List<RecentEpisode> episodes =
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
}
