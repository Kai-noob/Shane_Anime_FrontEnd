import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/search/data/datasources/search_comic_data_source.dart';
import 'package:movie_app/features/search/data/datasources/search_comic_data_source_impl.dart';
import 'package:movie_app/features/search/data/repositories/search_comic_repo_impl.dart';
import 'package:movie_app/features/search/domain/repositories/search_comic_repo.dart';
import 'package:movie_app/features/search/domain/usecases/search_comic_usecase.dart';
import 'package:movie_app/features/search/presentation/controllers/search_comic_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchComicController>(() => SearchComicController(
        searchComicUseCase: Get.find<SearchComicUseCase>()));
    Get.lazyPut<SearchComicUseCase>(
        () => SearchComicUseCase(searchRepo: Get.find<SearchRepo>()));

    Get.lazyPut<SearchRepo>(() => SearchComicRepoImpl(
        searchComicDataSource: Get.find<SearchComicDataSource>()));
    Get.lazyPut<SearchComicDataSource>(() => SearchComicDataSourceImpl(
        firebaseFirestore: Get.find<FirebaseFirestore>()));

    final fireStore = FirebaseFirestore.instance;
    Get.put(fireStore, permanent: true);
  }
}
