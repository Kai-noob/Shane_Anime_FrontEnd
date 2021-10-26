import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/favourite_comic.dart';

abstract class LibraryRepo {
  Future<Either<Failure, List<FavouriteComic>>> getFavouriteComics();

  Future<Either<Failure, bool>> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic});

  Future<bool> checkFavourite({required String comicId});
}
