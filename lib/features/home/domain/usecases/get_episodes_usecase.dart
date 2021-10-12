import 'package:movie_app/features/home/domain/entities/episodes.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';

class GetEpisodesUseCase {
  final ComicRepo comicRepo;

  GetEpisodesUseCase({required this.comicRepo});

  Future<List<Episodes>> call(String comicId) {
    return comicRepo.getEpisodes(comicId);
  }
}
