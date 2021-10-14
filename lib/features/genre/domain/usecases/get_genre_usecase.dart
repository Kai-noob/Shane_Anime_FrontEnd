import '../entities/genre.dart';
import '../repositories/genre_repo.dart';

class GetGenreUsecase {
  final GenreRepo genreRepo;

  GetGenreUsecase({required this.genreRepo});

  Future<List<Genre>> call() {
    return genreRepo.getGenre();
  }
}
