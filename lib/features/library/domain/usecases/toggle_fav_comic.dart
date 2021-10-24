import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

import '../repositories/library_repo.dart';

class ToggleFavouriteComicsUseCase {
  final LibraryRepo favouriteRepo;

  ToggleFavouriteComicsUseCase(this.favouriteRepo);

  Future<Either<Failure, bool>> call(
      {required String comicId, required FavouriteComic favouriteComic}) {
    return favouriteRepo.toggleFavouriteComics(
        comicId: comicId, favouriteComic: favouriteComic);
  }
}
