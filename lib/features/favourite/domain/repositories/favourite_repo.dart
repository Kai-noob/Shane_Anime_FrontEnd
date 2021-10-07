import 'package:movie_app/features/favourite/domain/entities/favourite_comic.dart';

abstract class FavouriteRepo {
  Stream<List<FavouriteComic>> getFavouriteComics();

  Future<void> addFavouriteComic({required FavouriteComic favouriteComic});
}
