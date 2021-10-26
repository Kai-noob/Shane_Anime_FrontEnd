import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';

class FilterEpisodeUseCase {
  final ComicRepo comicRepo;

  FilterEpisodeUseCase({required this.comicRepo});

  Future<Either<Failure, List<Episode>>> call(DateTime datetime) {
    return comicRepo.getFilteredEpisodes(datetime);
  }
}
