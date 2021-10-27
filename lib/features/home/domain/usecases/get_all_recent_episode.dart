import 'package:dartz/dartz.dart';
import '../entities/episodes.dart';

import '../../../../core/error/failure.dart';

import '../repositories/comic_repo.dart';

class GetRecentEpisode {
  final ComicRepo comicRepo;

  GetRecentEpisode({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call() {
    return comicRepo.getAllRecentEpisodes();
  }
}
