import 'package:movie_app/features/favourite/data/models/favourite_comic.dart';
import 'package:movie_app/features/favourite/domain/repositories/favourite_repo.dart';

class RemoveFavourteComicUseCase {
  final FavouriteRepo favouriteRepo;

  RemoveFavourteComicUseCase(this.favouriteRepo);

  Future<void> call({required FavouriteComic favouriteComic}) {
    return favouriteRepo.addFavouriteComic(favouriteComic: favouriteComic);
  }
}
