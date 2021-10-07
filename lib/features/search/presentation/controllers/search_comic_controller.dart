import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/search/domain/entities/searchcomic.dart';
import 'package:movie_app/features/search/domain/usecases/search_comic_usecase.dart';
import 'package:movie_app/helpers/utils/show_snack_bar.dart';

class SearchComicController extends GetxController {
  final SearchComicUseCase searchComicUseCase;

  SearchComicController({required this.searchComicUseCase});

  final RxList<SearchComic> _searchComicList = <SearchComic>[].obs;

  List<SearchComic> get searchComicList => [..._searchComicList];

  final RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  setLoading(bool? isLoading) {
    _isLoading.value = isLoading!;
  }

  Future<void> searchComicsFromDB({required String query}) async {
    try {
      setLoading(true);
      List<SearchComic> _searchComics =
          await searchComicUseCase.call(query: query);

      for (var searchComic in _searchComics) {
        _searchComicList.add(searchComic);
      }
      query = "";
      setLoading(false);
      update();
    } catch (e) {
      setLoading(false);
      SnackBarUtils().showSnackBar(e.toString());
      print(e.toString());
    }
  }
}
