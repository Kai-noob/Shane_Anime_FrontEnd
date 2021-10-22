import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

abstract class LibraryDataSource {
  Future<List<FavouriteComic>> getFavouriteComics();

  Future<void> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic});
}
