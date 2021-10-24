import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';

import '../../../../core/error/failure.dart';

import '../repositories/comic_repo.dart';

class GetEpisodesUseCase {
  final ComicRepo comicRepo;

  GetEpisodesUseCase({required this.comicRepo});

  Future<Either<Failure, List<RecentEpisode>>> call(String comicId) {
    return comicRepo.getEpisodes(comicId);
  }
}
