import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import '../../../../core/error/failure.dart';

import '../repositories/comic_repo.dart';

class GetLimitRecentEpisodes {
  final ComicRepo comicRepo;

  GetLimitRecentEpisodes({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call() {
    return comicRepo.getLimitRecentEpisodes();
  }
}
