import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

abstract class FavouriteRepo {
  Future<Either<Failure, List<FavouriteComic>>> getFavouriteComics();

  Future<Either<Failure, void>> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic});
}
