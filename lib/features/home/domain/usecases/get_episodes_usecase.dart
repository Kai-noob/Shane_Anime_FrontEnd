import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';

import '../entities/episodes.dart';
import '../repositories/comic_repo.dart';

class GetEpisodesUseCase {
  final ComicRepo comicRepo;

  GetEpisodesUseCase({required this.comicRepo});

  Future<Either<Failure, List<Episodes>>> call(String comicId) {
    return comicRepo.getEpisodes(comicId);
  }
}
