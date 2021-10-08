import '../../data/models/favourite_comic.dart';
import '../repositories/favourite_repo.dart';

class RemoveFavourteComicUseCase {
  final FavouriteRepo favouriteRepo;

  RemoveFavourteComicUseCase(this.favouriteRepo);

  Future<void> call({required FavouriteComic favouriteComic}) {
    return favouriteRepo.addFavouriteComic(favouriteComic: favouriteComic);
  }
}
