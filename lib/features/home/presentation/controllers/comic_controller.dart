import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/utils/show_snack_bar.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_comic_usecase.dart';

class ComicController extends GetxController {
  final GetComicUseCase getComicUseCase;

  ComicController({required this.getComicUseCase});

  final RxList<Comic> _comicList = RxList();

  List<Comic> get comicList => [..._comicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getComicsFromDB() async {
    try {
      setLoading(true);
      List<Comic> comics = await getComicUseCase.call();

      for (var comic in comics) {
        _comicList.add(comic);
      }

      setLoading(false);
    } on FirebaseException catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
    } on SocketException catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
    }
  }

  @override
  void onInit() async {
    await getComicsFromDB();
    super.onInit();
  }
}
