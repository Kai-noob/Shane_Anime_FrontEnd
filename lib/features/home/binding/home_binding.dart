import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_id_usecase.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genre_usecase.dart';
import '../../genre/data/datasources/genre_datasource.dart';
import '../../genre/data/datasources/genre_datasource_imp.dart';
import '../../genre/data/repositories/genre_repo_impl.dart';
import '../../genre/domain/repositories/genre_repo.dart';
import '../../genre/domain/usecases/get_comic_by_genre_usecase.dart';
import '../../genre/domain/usecases/get_comic_id_usecase.dart';
import '../../genre/domain/usecases/get_genres_usecase.dart';
import '../../genre/presentation/controllers/genre_controller.dart';
import '../domain/usecases/get_completed_comic_usecase.dart';
import '../domain/usecases/get_episodes_usecase.dart';
import '../domain/usecases/get_hot_comic_usecase.dart';
import '../presentation/controllers/complete_controller.dart';
import '../presentation/controllers/episode_controller.dart';
import '../presentation/controllers/hot_controller.dart';
import '../../search/data/datasources/search_comic_data_source.dart';
import '../../search/data/datasources/search_comic_data_source_impl.dart';
import '../../search/data/repositories/search_comic_repo_impl.dart';
import '../../search/domain/repositories/search_comic_repo.dart';
import '../../search/domain/usecases/search_comic_usecase.dart';
import '../../search/presentation/controllers/search_comic_controller.dart';
import '../../../core/services/connection_service.dart';
import '../data/datasources/comic_datasource.dart';
import '../data/datasources/comic_datasource_impl.dart';
import '../data/repositories/comic_repository_impl.dart';
import '../domain/repositories/comic_repo.dart';
import '../domain/usecases/get_recent_usecase.dart';
import '../presentation/controllers/recent_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(() => NetworkController());

    Get.lazyPut<RecentController>(() =>
        RecentController(getRecentUseCase: Get.find<GetRecentComicUseCase>()));

    Get.lazyPut<CompleteController>(() => CompleteController(
          getGenreIdUsecase: Get.find<GetGenreIdUsecase>(),
          getGenreUseCase: Get.find<GetGenreUsecase>(),
          getCompleteUseCase: Get.find<GetCompletedComicUseCase>(),
        ));

    Get.lazyPut(() => HotController(
          getHotUseCase: Get.find<GetHotComicUseCase>(),
        ));

    Get.lazyPut(() => EpisodeController(
          getEpisodesUseCase: Get.find<GetEpisodesUseCase>(),
        ));

    Get.lazyPut<SearchComicController>(() => SearchComicController(
        searchComicUseCase: Get.find<SearchComicUseCase>()));

    Get.lazyPut<SearchComicUseCase>(
        () => SearchComicUseCase(searchRepo: Get.find<SearchRepo>()));

    Get.lazyPut<SearchRepo>(() => SearchComicRepoImpl(
        searchComicDataSource: Get.find<SearchComicDataSource>()));
    Get.lazyPut<SearchComicDataSource>(() => SearchComicDataSourceImpl(
        firebaseFirestore: Get.find<FirebaseFirestore>()));

    Get.lazyPut<GenreController>(() => GenreController(
        getGenreIdUsecase: Get.find<GetGenreIdUsecase>(),
        getGenresUsecase: Get.find<GetGenresUsecase>(),
        getComicIdUseCase: Get.find<GetComicIdUseCase>(),
        getComicsUseCase: Get.find<GetComicsUseCase>(),
        getGenreUsecase: Get.find<GetGenreUsecase>()));

    Get.lazyPut<GetRecentComicUseCase>(
        () => GetRecentComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetHotComicUseCase>(
        () => GetHotComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetCompletedComicUseCase>(
        () => GetCompletedComicUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetEpisodesUseCase>(
        () => GetEpisodesUseCase(comicRepo: Get.find<ComicRepo>()));

    Get.lazyPut<GetComicIdUseCase>(
        () => GetComicIdUseCase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<GetComicsUseCase>(
        () => GetComicsUseCase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<GetGenresUsecase>(
        () => GetGenresUsecase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<GetGenreUsecase>(
        () => GetGenreUsecase(genreRepo: Get.find<GenreRepo>()));

    Get.lazyPut<GetGenreIdUsecase>(
        () => GetGenreIdUsecase(genreRepo: Get.find<GenreRepo>()));

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
