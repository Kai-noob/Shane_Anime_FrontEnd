import '../../domain/entities/comic.dart';

abstract class ComicRemoteDataSource {
  Future<List<Comic>> getRecentComic();
  Future<List<Comic>> getHotComic();
  Future<List<Comic>> getCompleteComic();
}
