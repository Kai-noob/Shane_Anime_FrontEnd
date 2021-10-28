import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/episodes.dart';
import '../repositories/comic_repo.dart';

class FilterEpisodeUseCase {
  final ComicRepo comicRepo;

  FilterEpisodeUseCase({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call(String datetime) {
    return comicRepo.getFilteredEpisodes(datetime);
  }
}
