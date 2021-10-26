import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

import '../entities/genre.dart';
import '../repositories/genre_repo.dart';

class GetGenresUsecase {
  final GenreRepo genreRepo;

  GetGenresUsecase({required this.genreRepo});

  Future<Either<Failure, List<Genre>>> call() {
    return genreRepo.getGenres();
  }
}
