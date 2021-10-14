import '../entities/comic_gere.dart';
import '../repositories/genre_repo.dart';

class GetComicGenreUseCase {
  final GenreRepo genreRepo;

  GetComicGenreUseCase({required this.genreRepo});

  Future<List<ComicGenre>> call(String genreId) {
    return genreRepo.getComicGenre(genreId);
  }
}
