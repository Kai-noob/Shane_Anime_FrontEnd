import 'package:movie_app/features/favourite/data/models/favourite_comic.dart';

abstract class FavouriteRepo {
  Future<List<FavouriteComic>> getFavouriteComics();

  Future<void> addFavouriteComic({required FavouriteComic favouriteComic});
}
