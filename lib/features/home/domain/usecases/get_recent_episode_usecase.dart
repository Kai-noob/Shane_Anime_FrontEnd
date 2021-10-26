import 'package:dartz/dartz.dart';
import '../entities/episodes.dart';

import '../../../../core/error/failure.dart';

import '../repositories/comic_repo.dart';

class GetRecentEpisodeUseCase {
  final ComicRepo comicRepo;

  GetRecentEpisodeUseCase({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call() {
    return comicRepo.getRecentEpisodes();
  }
}
