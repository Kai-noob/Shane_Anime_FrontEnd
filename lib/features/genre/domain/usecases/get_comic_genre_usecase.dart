import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';

class GetComicGenreUseCase {
  final GenreRepo genreRepo;

  GetComicGenreUseCase({required this.genreRepo});

  Future<List<ComicGenre>> call(String genreId) {
    return genreRepo.getComicGenre(genreId);
  }
}
