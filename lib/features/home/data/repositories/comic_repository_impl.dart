import '../../domain/entities/comic.dart';
import '../../domain/entities/episodes.dart';
import '../../domain/entities/photos.dart';
import '../../domain/repositories/comic_repo.dart';
import '../datasources/comic_datasource.dart';

class ComicRepoImpl implements ComicRepo {
  final ComicRemoteDataSource remoteDataSource;

  ComicRepoImpl({required this.remoteDataSource});
  @override
  Future<List<Comic>> getRecentComics() {
    return remoteDataSource.getRecentComic();
  }

  @override
  Future<List<Comic>> getCompletedComics() {
    return remoteDataSource.getCompleteComic();
  }

  @override
  Future<List<Comic>> getHotComics() {
    return remoteDataSource.getHotComic();
  }

  @override
  Future<List<Episodes>> getEpisodes(String comicId) {
    return remoteDataSource.getEpisodes(comicId);
  }

  @override
  Future<List<Photos>> getPhotos(String comicId, String episodeName) {
    return remoteDataSource.getPhotos(comicId, episodeName);
  }
}
