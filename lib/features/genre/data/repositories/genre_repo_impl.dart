import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';

import '../../../home/domain/entities/comic.dart';

import '../datasources/genre_datasource.dart';
import '../../domain/entities/comic_gere.dart';
import '../../domain/entities/genre.dart';
import '../../domain/repositories/genre_repo.dart';

class GenreRepoImpl implements GenreRepo {
  final GenreDataSource genreDataSource;

  GenreRepoImpl({required this.genreDataSource});
  @override
  Future<Either<Failure, List<ComicGenre>>> getComicId(String genreId) async {
    try {
      final result = await genreDataSource.getComicId(genreId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Genre>>> getGenres() async {
    try {
      final result = await genreDataSource.getGenres();
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Comic>> getComics(String comicId) async {
    try {
      final result = await genreDataSource.getComics(comicId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ComicGenre>>> getGenreId(String comicId) async {
    try {
      final result = await genreDataSource.getGenreId(comicId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Genre>> getGenre(String genreId) async {
    try {
      final result = await genreDataSource.getGenre(genreId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
