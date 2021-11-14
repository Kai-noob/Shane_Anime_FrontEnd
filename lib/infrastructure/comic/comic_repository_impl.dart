import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/comic/comic_failure.dart';
import 'package:movie_app/domain/comic/comic.dart';
import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/comic/i_comic_repository.dart';

@LazySingleton(as: IComicRepository)
class ComicRepositoryImpl implements IComicRepository {
  final FirebaseFirestore _firestore;

  ComicRepositoryImpl(this._firestore);

  @override
  Future<Either<ComicFailure, List<Comic>>> getComics() {
    // TODO: implement getComics
    throw UnimplementedError();
  }

  // @override
  // Future<Either<ComicFailure, List<Comic>>> getComics() async{
  //   try{
  //     QuerySnapshot _querySnapshot = await _firestore
  //         .collection("comics")
  //         .where("published", isEqualTo: true)
  //         .get();

  //     List<Comic> _allComicList = [];

  //     for (QueryDocumentSnapshot _allComic in _querySnapshot.docs) {

  //       _allComicList.add(Comic.fromJson(_allComic.data()))

  //     }

  //   }on FirebaseException catch(e){
  //     if(e.code=='not-found'){
  //       return left(const ComicFailure.notFound());
  //     }else{
  //       return left(const ComicFailure.unexcepted());
  //     }
  //   }
  // }

}
