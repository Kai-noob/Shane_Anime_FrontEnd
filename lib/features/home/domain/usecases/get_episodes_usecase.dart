import '../entities/episodes.dart';
import '../repositories/comic_repo.dart';

class GetEpisodesUseCase {
  final ComicRepo comicRepo;

  GetEpisodesUseCase({required this.comicRepo});

  Future<List<Episodes>> call(String comicId) {
    return comicRepo.getEpisodes(comicId);
  }
}
