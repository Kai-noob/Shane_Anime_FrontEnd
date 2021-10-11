import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';

class GetGenreUsecase {
  final GenreRepo genreRepo;

  GetGenreUsecase({required this.genreRepo});

  Future<List<Genre>> call() {
    return genreRepo.getGenre();
  }
}
