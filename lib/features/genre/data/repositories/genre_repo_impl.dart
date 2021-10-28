import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../../home/domain/entities/comic.dart';
import '../../domain/entities/genre.dart';
import '../../domain/repositories/genre_repo.dart';
import '../datasources/genre_datasource.dart';

class GenreRepoImpl implements GenreRepo {
  final GenreDataSource genreDataSource;

  GenreRepoImpl({required this.genreDataSource});

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
  Future<Either<Failure, List<Comic>>> getComics(String genreId) async {
    try {
      final result = await genreDataSource.getComics(genreId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Genre>>> getGenre(String comicId) async {
    try {
      final result = await genreDataSource.getGenre(comicId);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
