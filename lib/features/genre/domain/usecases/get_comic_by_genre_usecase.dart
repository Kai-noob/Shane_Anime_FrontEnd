import '../entities/comic_by_genre.dart';
import '../repositories/genre_repo.dart';

class GetComicByGenreUseCase {
  final GenreRepo genreRepo;

  GetComicByGenreUseCase({required this.genreRepo});

  Future<ComicByGenre> call(String comicId) {
    return genreRepo.getComicByGenre(comicId);
  }
}
