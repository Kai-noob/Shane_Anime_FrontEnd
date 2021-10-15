import 'package:movie_app/features/genre/domain/entities/comic_gere.dart';
import 'package:movie_app/features/genre/domain/entities/genre.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';

class GetGenreIdUsecase {
  final GenreRepo genreRepo;

  GetGenreIdUsecase({required this.genreRepo});

  Future<List<ComicGenre>> call(String comicId) {
    return genreRepo.getGenreId(comicId);
  }
}
