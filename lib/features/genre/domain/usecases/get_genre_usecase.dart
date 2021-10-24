import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../entities/genre.dart';
import '../repositories/genre_repo.dart';

class GetGenreUsecase {
  final GenreRepo genreRepo;

  GetGenreUsecase({required this.genreRepo});

  Future<Either<Failure, List<Genre>>> call(String comicId) {
    return genreRepo.getGenre(comicId);
  }
}
