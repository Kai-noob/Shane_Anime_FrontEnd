import '../entities/comic_gere.dart';
import '../repositories/genre_repo.dart';

class GetComicIdUseCase {
  final GenreRepo genreRepo;

  GetComicIdUseCase({required this.genreRepo});

  Future<List<ComicGenre>> call(String genreId) {
    return genreRepo.getComicId(genreId);
  }
}
