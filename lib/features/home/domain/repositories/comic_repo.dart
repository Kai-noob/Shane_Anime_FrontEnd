import '../entities/comic.dart';

abstract class ComicRepo {
  Future<List<Comic>> getRecentComics();
  Future<List<Comic>> getCompletedComics();
  Future<List<Comic>> getHotComics();
}
