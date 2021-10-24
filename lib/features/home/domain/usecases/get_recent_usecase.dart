import 'package:dartz/dartz.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';

import '../../../../core/error/failure.dart';

import '../entities/comic.dart';
import '../repositories/comic_repo.dart';

class GetRecentComicUseCase {
  final ComicRepo comicRepo;

  GetRecentComicUseCase({required this.comicRepo});

  Future<Either<Failure, List<RecentEpisode>>> call() {
    return comicRepo.getRecentComics();
  }
}
