import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

import '../repositories/library_repo.dart';

class GetFavouriteComicUseCase {
  final FavouriteRepo favouriteRepo;

  GetFavouriteComicUseCase({required this.favouriteRepo});

  Future<Either<Failure, List<FavouriteComic>>> call() {
    return favouriteRepo.getFavouriteComics();
  }
}
