import 'package:get_it/get_it.dart';
import 'package:movie_app/features/home/domain/usecases/filter_episodes_usecase.dart';
import 'genre/data/datasources/genre_datasource.dart';
import 'genre/data/datasources/genre_datasource_impl.dart';
import 'genre/data/repositories/genre_repo_impl.dart';
import 'genre/domain/repositories/genre_repo.dart';
import 'genre/domain/usecases/get_comics_usecase.dart';
import 'genre/domain/usecases/get_genre_usecase.dart';
import 'genre/domain/usecases/get_genres_usecase.dart';
import 'genre/presentation/bloc/genre_bloc.dart';
import 'home/domain/usecases/check_pdf_or_images_usecase.dart';
import 'home/domain/usecases/get_images_usecase.dart';
import 'home/domain/usecases/get_pdf_usecase.dart';
import 'library/data/datasources/library_data_source.dart';
import 'library/data/datasources/library_data_source_impl.dart';
import 'library/data/repositories/library_repo_impl.dart';
import 'library/domain/repositories/library_repo.dart';
import 'library/domain/usecases/check_fav_comic.dart';

import 'library/domain/usecases/get_fav_comic.dart';
import 'library/domain/usecases/toggle_fav_comic.dart';
import 'library/presentation/bloc/library_bloc.dart';
import 'userAccount/domain/usecases/get_user_usecase.dart';
import 'userAccount/domain/usecases/sign_out_usecase.dart';
import 'userAccount/presentation/user/user_bloc.dart';
import 'home/data/datasources/comic_datasource.dart';
import 'home/data/datasources/comic_datasource_impl.dart';
import 'home/data/repositories/comic_repository_impl.dart';
import 'home/domain/repositories/comic_repo.dart';
import 'home/domain/usecases/get_completed_comic_usecase.dart';
import 'home/domain/usecases/get_episodes_usecase.dart';
import 'home/domain/usecases/get_hot_comic_usecase.dart';
import 'home/domain/usecases/get_recent_episode_usecase.dart';
import 'home/presentation/bloc/complete_comic/complete_bloc.dart';
import 'home/presentation/bloc/hot_comic/hot_bloc.dart';
import 'home/presentation/bloc/recent_episode/recent_bloc.dart';
import 'home/presentation/bloc/details/details_bloc.dart';
import 'search/data/datasources/search_comic_data_source.dart';
import 'search/data/datasources/search_comic_data_source_impl.dart';
import 'search/data/repositories/search_comic_repo_impl.dart';
import 'search/domain/repositories/search_comic_repo.dart';
import 'search/domain/usecases/search_comic_usecase.dart';
import 'search/presentation/bloc/search_bloc.dart';
import 'userAccount/data/datasources/auth_data_source.dart';
import 'userAccount/data/datasources/auth_data_source_impl.dart';
import 'userAccount/data/repositories/auth_repo_impl.dart';
import 'userAccount/domain/repositories/auth_repo.dart';
import 'userAccount/domain/usecases/sign_in_usecase.dart';
import 'userAccount/domain/usecases/sign_up_usecase.dart';
import 'userAccount/presentation/auth/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerFactory(() => AuthBloc(sl(), sl(), sl()));

  sl.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(authRepo: sl()));

  sl.registerLazySingleton<SignOutUseCase>(
      () => SignOutUseCase(authRepo: sl()));

  sl.registerLazySingleton<GetUserUseCase>(
      () => GetUserUseCase(authRepo: sl()));

  sl.registerLazySingleton<SignInUseCase>(() => SignInUseCase(authRepo: sl()));

  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(authDataSource: sl()));

  sl.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());

  sl.registerFactory(() => CompleteBloc(sl()));

  sl.registerFactory(() => UserBloc(sl()));

  sl.registerFactory(() => GenreBloc(sl(), sl()));

  sl.registerFactory(() => LibraryBloc(sl(), sl()));

  sl.registerLazySingleton<GetFavouriteComicUseCase>(
      () => GetFavouriteComicUseCase(favouriteRepo: sl()));

  sl.registerLazySingleton<CheckFavComiUseCase>(
      () => CheckFavComiUseCase(favouriteRepo: sl()));

  sl.registerLazySingleton<ToggleFavouriteComicsUseCase>(
      () => ToggleFavouriteComicsUseCase(sl()));

  sl.registerLazySingleton<LibraryRepo>(
      () => FavouriteRepoImpl(libraryDataSource: sl()));

  sl.registerLazySingleton<LibraryDataSource>(() => LibraryDataSourceImpl());

  sl.registerFactory(() => RecentBloc(sl(), sl()));

  sl.registerFactory(() => HotBloc(sl()));

  sl.registerFactory(() => DetailsBloc(sl(), sl(), sl(), sl(), sl()));

  sl.registerFactory(() => SearchBloc(sl()));

  sl.registerLazySingleton<SearchComicUseCase>(
      () => SearchComicUseCase(searchRepo: sl()));

  sl.registerLazySingleton<SearchRepo>(
      () => SearchComicRepoImpl(searchComicDataSource: sl()));

  sl.registerLazySingleton<SearchComicDataSource>(
      () => SearchComicDataSourceImpl());

  sl.registerLazySingleton<GetCompletedComicUseCase>(
      () => GetCompletedComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetEpisodesUseCase>(
      () => GetEpisodesUseCase(comicRepo: sl()));

  sl.registerLazySingleton<FilterEpisodeUseCase>(
      () => FilterEpisodeUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetImagesUseCase>(
      () => GetImagesUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetPdfUseCase>(() => GetPdfUseCase(comicRepo: sl()));

  sl.registerLazySingleton<CheckPdfOrImagesUseCase>(
      () => CheckPdfOrImagesUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetHotComicUseCase>(
      () => GetHotComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetGenresUsecase>(
      () => GetGenresUsecase(genreRepo: sl()));

  sl.registerLazySingleton<GetGenreUsecase>(
      () => GetGenreUsecase(genreRepo: sl()));

  sl.registerLazySingleton<GetComicsUseCase>(
      () => GetComicsUseCase(genreRepo: sl()));

  sl.registerLazySingleton<GetRecentEpisodeUseCase>(
      () => GetRecentEpisodeUseCase(comicRepo: sl()));

  sl.registerLazySingleton<ComicRepo>(
      () => ComicRepoImpl(remoteDataSource: sl()));

  sl.registerLazySingleton<GenreRepo>(
      () => GenreRepoImpl(genreDataSource: sl()));

  sl.registerLazySingleton<GenreDataSource>(() => GenreDataSourceImpl());

  sl.registerLazySingleton<ComicRemoteDataSource>(
      () => ComicRemoteDataSourceImpl());
}
