import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/favourite_comic.dart';

import '../repositories/library_repo.dart';

class GetFavouriteComicUseCase {
  final LibraryRepo favouriteRepo;

  GetFavouriteComicUseCase({required this.favouriteRepo});

  Future<Either<Failure, List<FavouriteComic>>> call() {
    return favouriteRepo.getFavouriteComics();
  }
}
