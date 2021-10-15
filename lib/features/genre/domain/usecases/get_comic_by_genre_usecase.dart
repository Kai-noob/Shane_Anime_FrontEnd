import 'package:movie_app/features/home/domain/entities/comic.dart';

import '../entities/comic_by_genre.dart';
import '../repositories/genre_repo.dart';

class GetComicsUseCase {
  final GenreRepo genreRepo;

  GetComicsUseCase({required this.genreRepo});

  Future<Comic> call(String comicId) {
    return genreRepo.getComics(comicId);
  }
}
