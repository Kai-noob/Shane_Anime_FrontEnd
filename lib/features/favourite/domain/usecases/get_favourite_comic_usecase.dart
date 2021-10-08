import '../../data/models/favourite_comic.dart';

import '../repositories/favourite_repo.dart';

class GetFavouriteComicUseCase {
  final FavouriteRepo favouriteRepo;

  GetFavouriteComicUseCase({required this.favouriteRepo});

  Future<List<FavouriteComic>> call() {
    return favouriteRepo.getFavouriteComics();
  }
}
