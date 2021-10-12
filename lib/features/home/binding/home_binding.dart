import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/genre/data/datasources/genre_datasource.dart';
import 'package:movie_app/features/genre/data/datasources/genre_datasource_imp.dart';
import 'package:movie_app/features/genre/data/repositories/genre_repo_impl.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';
import 'package:movie_app/features/genre/domain/usecases/get_comic_by_genre_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_comic_genre_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_usecase.dart';
import 'package:movie_app/features/genre/presentation/controllers/genre_controller.dart';
import 'package:movie_app/features/home/domain/usecases/get_completed_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_episodes_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_hot_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_phoots_usecase.dart';
import 'package:movie_app/features/home/presentation/controllers/complete_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/episode_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/hot_controller.dart';
import 'package:movie_app/features/home/presentation/controllers/photo_controller.dart';
import '../../../core/services/connection_service.dart';
import '../data/datasources/comic_datasource.dart';
import '../data/datasources/comic_datasource_impl.dart';
import '../data/repositories/comic_repository_impl.dart';
import '../domain/repositories/comic_repo.dart';
import '../domain/usecases/get_recent_usecase.dart';
import '../presentation/controllers/comic_controller.dart';

import '../../favourite/domain/repositories/favourite_repo.dart';
import '../../favourite/domain/usecases/add_favourite_comic_usecase.dart';
import '../../favourite/domain/usecases/get_favourite_comic_usecase.dart';
import '../../favourite/presentation/controllers/favourite_comic_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());

    Get.lazyPut<ComicController>(() =>
        ComicController(getRecentUseCase: Get.find<GetRecentComicUseCase>()));

    Get.lazyPut<CompleteController>(() => CompleteController(
          getCompleteUseCase: Get.find<GetCompletedComicUseCase>(),
        ));

    Get.lazyPut(() => HotController(
          getHotUseCase: Get.find<GetHotComicUseCase>(),
        ));

    Get.lazyPut(() => EpisodeController(
          getPhotosUseCase: Get.find<GetPhotosUseCase>(),
          getEpisodesUseCase: Get.find<GetEpisodesUseCase>(),
        ));

    Get.lazyPut(() => PhotoController(
          getPhotosUseCase: Get.find<GetPhotosUseCase>(),
        ));

    Get.lazyPut<GenreController>(() => GenreController(
        getComicGenreUseCase: Get.find<GetComicGenreUseCase>(),
        getComicByGenreUseCase: Get.find<GetComicByGenreUseCase>(),
        getGenreUsecase: Get.find<GetGenreUsecase>()));

    Get.lazyPut<GetRecentComicUseCase>(
        () => GetRecentComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetHotComicUseCase>(
        () => GetHotComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetCompletedComicUseCase>(
        () => GetCompletedComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetEpisodesUseCase>(
        () => GetEpisodesUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetPhotosUseCase>(
        () => GetPhotosUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetComicGenreUseCase>(
        () => GetComicGenreUseCase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<GetComicByGenreUseCase>(
        () => GetComicByGenreUseCase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<GetGenreUsecase>(
        () => GetGenreUsecase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<ComicRepo>(() =>
        ComicRepoImpl(remoteDataSource: Get.find<ComicRemoteDataSource>()));

    Get.lazyPut<GenreRepo>(
        () => GenreRepoImpl(genreDataSource: Get.find<GenreDataSource>()));

    Get.lazyPut<ComicRemoteDataSource>(() => ComicRemoteDataSourceImpl(
        firebaseFirestore: Get.find<FirebaseFirestore>()));

    Get.lazyPut<GenreDataSource>(() =>
        GenreDataSourceImpl(firebaseFirestore: Get.find<FirebaseFirestore>()));

    //FavouriteComic
    // Get.lazyPut<FavouriteComicController>(() => FavouriteComicController());
    // Get.lazyPut<GetFavouriteComicUseCase>(() =>
    //     GetFavouriteComicUseCase(favouriteRepo: Get.find<FavouriteRepo>()));

    // Get.lazyPut<AddFavouriteComicUseCase>(() =>
    //     AddFavouriteComicUseCase(favouriteRepo: Get.find<FavouriteRepo>()));

    // // Get.lazyPut<FavouriteRepo>(() => FavouriteComiRepoImpl(
    // //     remoteDataSource: Get.find<FavouriteComicDataSource>()));
    // // Get.lazyPut<FavouriteComicDataSource>(() => FavouriteComicDataSourceImpl(
    // //     firebaseFirestore: Get.find<FirebaseFirestore>()));
    // //search comic

    final fireStore = FirebaseFirestore.instance;
    Get.put(fireStore, permanent: true);
  }
}
