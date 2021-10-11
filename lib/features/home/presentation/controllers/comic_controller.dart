import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/home/domain/usecases/get_completed_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_hot_comic_usecase.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../domain/entities/comic.dart';
import '../../domain/usecases/get_recent_usecase.dart';

class ComicController extends GetxController {
  final GetRecentComicUseCase getRecentUseCase;

  ComicController({
    required this.getRecentUseCase,
  });

  final RxList<Comic> _recentComicList = RxList();

  List<Comic> get recentComicList => [..._recentComicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> getRecentComics() async {
    try {
      setLoading(true);
      List<Comic> _recentComics = await getRecentUseCase.call();

      if (_recentComics.length < 5) {
        for (var _recentComic in _recentComics) {
          _recentComicList.add(_recentComic);
        }
      } else {
        for (var i = 0; i < 5; i++) {
          print(i);
          _recentComicList.add(_recentComics[i]);
        }
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
      SnackBarUtils().showSnackBar("Recent ${e.toString()}");
    }
  }

  @override
  void onInit() {
    getRecentComics();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
