import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/comic/comic_failure.dart';
import '../../domain/save_comic/i_save_comic_repository.dart';
import '../../domain/save_comic/save_comic.dart';
import '../core/firestore_helper.dart';

@LazySingleton(as: ISaveComicRepository)
class SaveComicRepositoryImpl implements ISaveComicRepository {
  final FirebaseFirestore _firestore;

  SaveComicRepositoryImpl(this._firestore);

  @override
  Stream<Either<ComicFailure, List<SaveComics>>> watchSaveComics() async* {
    final userDoc = await _firestore.usersDoc();
    yield* userDoc
        .collection("saved")
        .snapshots()
        .map((snapshot) => right<ComicFailure, List<SaveComics>>(snapshot.docs
            .map((doc) => SaveComics.fromJson(doc.data()))
            .toList()))
        .handleError((e) {
      if (e is FirebaseException && e.code == 'permission-denied') {
        return left(const ComicFailure.permissionDenied());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    });
  }

  @override
  Future<Either<ComicFailure, Unit>> saveComic(String comicId) async {
    try {
      final saveComicDoc = await _firestore.saveComicDoc(comicId);

      await saveComicDoc.set({"id": comicId});

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Left(ComicFailure.permissionDenied());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }

  @override
  Future<Either<ComicFailure, Unit>> removeComic(String comicId) async {
    try {
      final saveComicDoc = await _firestore.saveComicDoc(comicId);
      await saveComicDoc.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const ComicFailure.permissionDenied());
      } else if (e.code == 'not-found') {
        return left(const ComicFailure.notFound());
      } else {
        return left(const ComicFailure.unexcepted());
      }
    }
  }
}
