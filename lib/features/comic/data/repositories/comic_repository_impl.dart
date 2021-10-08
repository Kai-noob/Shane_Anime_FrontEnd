import '../datasources/comic_datasource.dart';
import '../../domain/entities/comic.dart';
import '../../domain/repositories/comic_repo.dart';

class ComicRepoImpl implements ComicRepo {
  final ComicRemoteDataSource remoteDataSource;

  ComicRepoImpl({required this.remoteDataSource});
  @override
  Future<List<Comic>> getComicsFromFirebase() {
    return remoteDataSource.getComicFromFirebase();
  }
}
