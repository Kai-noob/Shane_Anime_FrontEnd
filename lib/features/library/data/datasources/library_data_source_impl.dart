import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/features/library/data/datasources/library_data_source.dart';
import 'package:movie_app/features/library/data/models/favourite_comic_model.dart';
import 'package:movie_app/features/library/domain/entities/favourite_comic.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LibraryDataSourceImpl implements LibraryDataSource {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<List<FavouriteComic>> getFavouriteComics() async {
    try {
      final QuerySnapshot _querySnapshot = await _firebaseFirestore
          .collection("users")
          .doc(_firebaseAuth.currentUser!.uid)
          .collection("favourite")
          .get();

      List<FavouriteComic> _favouriteComicList = [];

      for (QueryDocumentSnapshot _favouriteComic in _querySnapshot.docs) {
        _favouriteComicList.add(FavouriteComicModel(
          id: _favouriteComic.id,
          title: _favouriteComic.get("title"),
          coverPhoto: _favouriteComic.get("cover_photo"),
        ));
      }
      return _favouriteComicList;
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<bool> toggleFavouriteComics(
      {required String comicId, required FavouriteComic favouriteComic}) async {
    List<FavouriteComic> favourtiteComics = await getFavouriteComics();

    bool isFavourite = favourtiteComics.any((e) => e.id == comicId);

    if (isFavourite) {
      try {
        await _firebaseFirestore
            .collection("users")
            .doc(_firebaseAuth.currentUser!.uid)
            .collection("favourite")
            .doc(comicId)
            .delete();

        return true;
      } catch (e) {
        throw ServerException();
      }
    } else {
      try {
        await _firebaseFirestore
            .collection("users")
            .doc(_firebaseAuth.currentUser!.uid)
            .collection("favourite")
            .doc(favouriteComic.id)
            .set({
          "id": favouriteComic.id,
          "title": favouriteComic.title,
          "cover_photo": favouriteComic.coverPhoto,
        });
        return false;
      } catch (e) {
        throw ServerException();
      }
    }
  }

  @override
  Future<bool> checkFavourite({required String comicId}) async {
    List<FavouriteComic> _favouriteComics = await getFavouriteComics();
    bool isFavourite = _favouriteComics.any((element) => element.id == comicId);
    return isFavourite;
  }
}
