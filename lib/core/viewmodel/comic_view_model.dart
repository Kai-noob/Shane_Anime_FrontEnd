import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/comice_service.dart';
import 'package:movie_app/model/comic_model.dart';

class ComicViewModel extends GetxController {
  final List<ComicModel> _comics = [];

  List<ComicModel> get comics => _comics;

  bool _loading = false;

  bool get loading => _loading;

  @override
  void onInit() {
    _getComicsFromFireStore();
    super.onInit();
  }

  Future<void> _getComicsFromFireStore() async {
    _loading = true;
    List<QueryDocumentSnapshot> comicSnapshots =
        await ComicService().getComics();

    for (var comic in comicSnapshots) {
      _comics
          .add(ComicModel.fromFirebase(comic.data() as Map<String, dynamic>));
    }
    _loading = false;
    update();
  }
}
