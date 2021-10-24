import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';

abstract class LibraryLocalSource {
  Future<List<FavouriteComic>> fetchComics();
  Future<void> saveComics(FavouriteComic favouriteComic);

  Future<FavouriteComic> deleteComics();
}
