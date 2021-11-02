import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../home/domain/entities/comic.dart';
import '../repositories/genre_repo.dart';

class GetComicsUseCase {
  final GenreRepo genreRepo;

  GetComicsUseCase({required this.genreRepo});

  Future<Either<Failure, List<Comic>>> call(String genreId) {
    return genreRepo.getComics(genreId);
  }
}
