import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../../../home/domain/entities/comic.dart';

import '../repositories/genre_repo.dart';

class GetComicsUseCase {
  final GenreRepo genreRepo;

  GetComicsUseCase({required this.genreRepo});

  Future<Either<Failure, Comic>> call(String comicId) {
    return genreRepo.getComics(comicId);
  }
}
