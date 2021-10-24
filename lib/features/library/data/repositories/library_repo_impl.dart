import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/features/library/data/datasources/library_data_source.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

import '../../domain/repositories/library_repo.dart';

class FavouriteRepoImpl implements LibraryRepo {
  final LibraryDataSource libraryDataSource;

  FavouriteRepoImpl({required this.libraryDataSource});

  @override
  Future<Either<Failure, List<FavouriteComic>>> getFavouriteComics() async {
    try {
      final favouriteComics = await libraryDataSource.getFavouriteComics();
      return Right(favouriteComics);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic}) async {
    try {
      final result = await libraryDataSource.toggleFavouriteComics(
          comicId: comicId, favouriteComic: favouriteComic);
      return Right(result);
      // return Right(await libraryDataSource.toggleFavouriteComics(
      //     comicId: comicId, favouriteComic: favouriteComic));
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<bool> checkFavourite({required String comicId}) {
    return libraryDataSource.checkFavourite(comicId: comicId);
  }

  @override
  Future<Either<Failure, List<FavouriteComic>>> fetchComics() {
    // TODO: implement fetchComics
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, FavouriteComic>> saveComics() {
    // TODO: implement saveComics
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, FavouriteComic>> removeComics() {
    // TODO: implement removeComics
    throw UnimplementedError();
  }
}
