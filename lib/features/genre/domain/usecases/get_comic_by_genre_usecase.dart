import 'package:movie_app/features/genre/domain/entities/comic_by_genre.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';

class GetComicByGenreUseCase {
  final GenreRepo genreRepo;

  GetComicByGenreUseCase({required this.genreRepo});

  Future<List<ComicByGenre>> call(String doc) {
    return genreRepo.getComicByGenre(doc);
  }
}
