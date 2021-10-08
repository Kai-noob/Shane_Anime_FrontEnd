import '../models/favourite_comic.dart';
import '../../domain/repositories/favourite_repo.dart';

class FavouriteRepoImpl implements FavouriteRepo {
  @override
  Future<void> addFavouriteComic({required FavouriteComic favouriteComic}) {
    // TODO: implement addFavouriteComic
    throw UnimplementedError();
  }

  @override
  Future<List<FavouriteComic>> getFavouriteComics() {
    // TODO: implement getFavouriteComics
    throw UnimplementedError();
  }
}
