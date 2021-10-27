import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';

class FilterEpisode {
  final ComicRepo comicRepo;

  FilterEpisode({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call(DateTime datetime) {
    return comicRepo.getFilteredEpisodes(datetime);
  }
}
