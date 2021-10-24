import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

abstract class LibraryRepo {
  Future<Either<Failure, List<FavouriteComic>>> getFavouriteComics();

  Future<Either<Failure, bool>> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic});

  Future<bool> checkFavourite({required String comicId});

  Future<Either<Failure, FavouriteComic>> saveComics();

  Future<Either<Failure, FavouriteComic>> removeComics();

  Future<Either<Failure, List<FavouriteComic>>> fetchComics();
}
