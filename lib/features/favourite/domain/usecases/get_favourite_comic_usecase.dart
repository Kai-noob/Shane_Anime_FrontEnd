import 'package:movie_app/features/comic/domain/entities/comic.dart';
import 'package:movie_app/features/favourite/data/models/favourite_comic.dart';

import 'package:movie_app/features/favourite/domain/repositories/favourite_repo.dart';

class GetFavouriteComicUseCase {
  final FavouriteRepo favouriteRepo;

  GetFavouriteComicUseCase({required this.favouriteRepo});

  Future<List<FavouriteComic>> call() {
    return favouriteRepo.getFavouriteComics();
  }
}
