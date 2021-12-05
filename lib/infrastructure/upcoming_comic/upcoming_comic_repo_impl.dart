import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic_failure.dart';
import 'package:dartz/dartz.dart';
import '../../domain/upcoming_comic/i_upcoming_comic_repo.dart';
import '../../domain/upcoming_comic/upcoming_comic.dart';

@LazySingleton(as: IUpcomingComicRepo)
class UpComingComicRepoImpl implements IUpcomingComicRepo {
  final FirebaseFirestore _firestore;

  UpComingComicRepoImpl(this._firestore);

  @override
  Future<Either<ComicFailure, List<Upcomingcomic>>> getUpcomingComics() async {
    try {
      final QuerySnapshot _querySnapshot =
          await _firestore.collection("upcomings").get();
      List<Upcomingcomic> _upcomingComicList = [];

      for (QueryDocumentSnapshot _upcomingComic in _querySnapshot.docs) {
        final upcomingComics = Upcomingcomic.fromJson(
            _upcomingComic.data() as Map<String, dynamic>);

        _upcomingComicList.add(upcomingComics);
      }
      return right(_upcomingComicList);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }
}
