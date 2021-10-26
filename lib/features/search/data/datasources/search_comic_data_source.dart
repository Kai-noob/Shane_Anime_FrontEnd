import 'package:movie_app/features/home/domain/entities/comic.dart';

abstract class SearchComicDataSource {
  Future<List<Comic>> searchComics({required String query});
}
