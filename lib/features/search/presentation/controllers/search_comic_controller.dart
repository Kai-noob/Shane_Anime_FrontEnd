import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/entities/searchcomic.dart';
import '../../domain/usecases/search_comic_usecase.dart';
import '../../../../helpers/utils/show_snack_bar.dart';

class SearchComicController extends GetxController {
  final SearchComicUseCase searchComicUseCase;

  SearchComicController({required this.searchComicUseCase});

  final RxList<SearchComic> _searchComicList = RxList();

  List<SearchComic> get searchComicList => _searchComicList;

  final RxBool _isLoading = false.obs;

  final RxBool _isEmpty = false.obs;

  bool get isLoading => _isLoading.value;

  bool get isEmpty => _isEmpty.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> searchComicsFromDB({required String query}) async {
    try {
      setLoading(true);
      List<SearchComic> _searchComics =
          await searchComicUseCase.call(query: query);

      _searchComicList.value = _searchComics;

      if (_searchComics.isNotEmpty) {
        _isEmpty.value = false;
      } else {
        _isEmpty.value = true;
      }

      setLoading(false);
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
      print(e.toString());
    }
  }
}
