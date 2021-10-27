import 'package:dartz/dartz.dart';
import '../entities/episodes.dart';

import '../../../../core/error/failure.dart';

import '../repositories/comic_repo.dart';

class GetEpisodes {
  final ComicRepo comicRepo;

  GetEpisodes({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call(String comicId) {
    return comicRepo.getEpisodes(comicId);
  }
}
