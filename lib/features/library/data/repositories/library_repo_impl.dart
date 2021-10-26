import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import 'package:dartz/dartz.dart';
import '../datasources/library_data_source.dart';
import '../../domain/entities/favourite_comic.dart';

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
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<bool> checkFavourite({required String comicId}) {
    return libraryDataSource.checkFavourite(comicId: comicId);
  }
}
