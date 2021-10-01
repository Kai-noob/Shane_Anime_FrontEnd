import 'package:cloud_firestore/cloud_firestore.dart';

class ComicService {
  final CollectionReference _comicRef =
      FirebaseFirestore.instance.collection('comic');

  Future<List<QueryDocumentSnapshot>> getComics() async {
    var comics = await _comicRef.get();
    return comics.docs;
  }

  // Future<int>  getDocumentId () async{
  //   var comics=await _comicRef.doc().id;
  // }

  Future<void> updateFavourite() async {}
}
