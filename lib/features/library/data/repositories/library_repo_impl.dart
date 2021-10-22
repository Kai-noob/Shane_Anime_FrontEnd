import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/features/library/data/datasources/library_data_source.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

import '../../domain/repositories/library_repo.dart';

class FavouriteRepoImpl implements FavouriteRepo {
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
  Future<Either<Failure, void>> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic}) async {
    try {
      return Right(await libraryDataSource.toggleFavouriteComics(
          comicId: comicId, favouriteComic: favouriteComic));
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
