import 'package:dartz/dartz.dart';
import '../comic/comic_failure.dart';
import 'upcoming_comic.dart';

abstract class IUpcomingComicRepo {
  Future<Either<ComicFailure, List<Upcomingcomic>>> getUpcomingComics();
}
