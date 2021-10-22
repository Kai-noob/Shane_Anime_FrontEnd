import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../entities/comic_gere.dart';
import '../repositories/genre_repo.dart';

class GetComicIdUseCase {
  final GenreRepo genreRepo;

  GetComicIdUseCase({required this.genreRepo});

  Future<Either<Failure, List<ComicGenre>>> call(String genreId) {
    return genreRepo.getComicId(genreId);
  }
}
