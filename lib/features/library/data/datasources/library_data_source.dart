import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

abstract class LibraryDataSource {
  Future<List<FavouriteComic>> getFavouriteComics();

  Future<bool> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic});

  Future<bool> checkFavourite({required String comicId});
}
