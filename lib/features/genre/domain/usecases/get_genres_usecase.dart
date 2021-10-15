import '../entities/genre.dart';
import '../repositories/genre_repo.dart';

class GetGenresUsecase {
  final GenreRepo genreRepo;

  GetGenresUsecase({required this.genreRepo});

  Future<List<Genre>> call() {
    return genreRepo.getGenres();
  }
}
