import 'package:movie_app/features/comic/data/datasources/comic_datasource.dart';
import 'package:movie_app/features/comic/domain/entities/comic.dart';
import 'package:movie_app/features/comic/domain/repositories/comic_repo.dart';

class ComicRepoImpl implements ComicRepo {
  final ComicRemoteDataSource remoteDataSource;

  ComicRepoImpl({required this.remoteDataSource});
  @override
  Future<List<Comic>> getComicsFromFirebase() {
    return remoteDataSource.getComicFromFirebase();
  }
}
