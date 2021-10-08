import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/connection_service.dart';
import 'package:movie_app/features/home/data/datasources/comic_datasource.dart';
import 'package:movie_app/features/home/data/datasources/comic_datasource_impl.dart';
import 'package:movie_app/features/home/data/repositories/comic_repository_impl.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';
import 'package:movie_app/features/home/domain/usecases/get_comic_usecase.dart';
import 'package:movie_app/features/home/presentation/controllers/comic_controller.dart';

import '../../favourite/domain/repositories/favourite_repo.dart';
import '../../favourite/domain/usecases/add_favourite_comic_usecase.dart';
import '../../favourite/domain/usecases/get_favourite_comic_usecase.dart';
import '../../favourite/presentation/controllers/favourite_comic_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ComicController>(
        () => ComicController(getComicUseCase: Get.find<GetComicUseCase>()));

    Get.lazyPut<NetworkController>(() => NetworkController());

    Get.lazyPut<GetComicUseCase>(
        () => GetComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<ComicRepo>(() =>
        ComicRepoImpl(remoteDataSource: Get.find<ComicRemoteDataSource>()));
    Get.lazyPut<ComicRemoteDataSource>(() => ComicRemoteDataSourceImpl(
        firebaseFirestore: Get.find<FirebaseFirestore>()));

    //FavouriteComic
    Get.lazyPut<FavouriteComicController>(() => FavouriteComicController());
    Get.lazyPut<GetFavouriteComicUseCase>(() =>
        GetFavouriteComicUseCase(favouriteRepo: Get.find<FavouriteRepo>()));

    Get.lazyPut<AddFavouriteComicUseCase>(() =>
        AddFavouriteComicUseCase(favouriteRepo: Get.find<FavouriteRepo>()));

    // Get.lazyPut<FavouriteRepo>(() => FavouriteComiRepoImpl(
    //     remoteDataSource: Get.find<FavouriteComicDataSource>()));
    // Get.lazyPut<FavouriteComicDataSource>(() => FavouriteComicDataSourceImpl(
    //     firebaseFirestore: Get.find<FirebaseFirestore>()));
    //search comic

    final fireStore = FirebaseFirestore.instance;
    Get.put(fireStore, permanent: true);
  }
}
