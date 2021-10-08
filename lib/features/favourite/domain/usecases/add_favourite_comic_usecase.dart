import '../../data/models/favourite_comic.dart';
import '../repositories/favourite_repo.dart';

class AddFavouriteComicUseCase {
  final FavouriteRepo favouriteRepo;

  AddFavouriteComicUseCase({required this.favouriteRepo});

  Future<void> call({required FavouriteComic favouriteComic}) {
    return favouriteRepo.addFavouriteComic(favouriteComic: favouriteComic);
  }
}
