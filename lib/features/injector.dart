import 'package:get_it/get_it.dart';
import 'package:movie_app/features/genre/data/datasources/genre_datasource.dart';
import 'package:movie_app/features/genre/data/datasources/genre_datasource_imp.dart';
import 'package:movie_app/features/genre/data/repositories/genre_repo_impl.dart';
import 'package:movie_app/features/genre/domain/repositories/genre_repo.dart';
import 'package:movie_app/features/genre/domain/usecases/get_genres_usecase.dart';
import 'package:movie_app/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:movie_app/features/home/domain/usecases/get_phoots_usecase.dart';
import 'package:movie_app/features/library/data/datasources/library_data_source.dart';
import 'package:movie_app/features/library/data/datasources/library_data_source_impl.dart';
import 'package:movie_app/features/library/data/repositories/library_repo_impl.dart';
import 'package:movie_app/features/library/domain/repositories/library_repo.dart';

import 'package:movie_app/features/library/domain/usecases/get_fav_comic.dart';
import 'package:movie_app/features/library/domain/usecases/toggle_fav_comic.dart';
import 'package:movie_app/features/library/presentation/bloc/library_bloc.dart';
import 'package:movie_app/features/userAccount/domain/usecases/get_user_usecase.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_out_usecase.dart';
import 'package:movie_app/features/userAccount/presentation/user/user_bloc.dart';
import 'home/data/datasources/comic_datasource.dart';
import 'home/data/datasources/comic_datasource_impl.dart';
import 'home/data/repositories/comic_repository_impl.dart';
import 'home/domain/repositories/comic_repo.dart';
import 'home/domain/usecases/get_completed_comic_usecase.dart';
import 'home/domain/usecases/get_episodes_usecase.dart';
import 'home/domain/usecases/get_hot_comic_usecase.dart';
import 'home/domain/usecases/get_recent_usecase.dart';
import 'home/presentation/bloc/complete_bloc.dart';
import 'home/presentation/bloc/hot_bloc.dart';
import 'home/presentation/bloc/recent_bloc.dart';
import 'home/presentation/bloc/details_bloc.dart';
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

  sl.registerFactory(() => GenreBloc(sl()));

  sl.registerFactory(() => LibraryBloc(sl(), sl()));

  sl.registerLazySingleton<GetFavouriteComicUseCase>(
      () => GetFavouriteComicUseCase(favouriteRepo: sl()));

  sl.registerLazySingleton<ToggleFavouriteComicsUseCase>(
      () => ToggleFavouriteComicsUseCase(sl()));

  sl.registerLazySingleton<FavouriteRepo>(
      () => FavouriteRepoImpl(libraryDataSource: sl()));

  sl.registerLazySingleton<LibraryDataSource>(() => LibraryDataSourceImpl());

  sl.registerFactory(() => RecentBloc(sl()));

  sl.registerFactory(() => HotBloc(sl()));

  sl.registerFactory(() => DetailsBloc(sl(), sl()));

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

  sl.registerLazySingleton<GetPhotosUseCase>(
      () => GetPhotosUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetHotComicUseCase>(
      () => GetHotComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetGenresUsecase>(
      () => GetGenresUsecase(genreRepo: sl()));

  sl.registerLazySingleton<GetRecentComicUseCase>(
      () => GetRecentComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<ComicRepo>(
      () => ComicRepoImpl(remoteDataSource: sl()));

  sl.registerLazySingleton<GenreRepo>(
      () => GenreRepoImpl(genreDataSource: sl()));

  sl.registerLazySingleton<GenreDataSource>(() => GenreDataSourceImpl());

  sl.registerLazySingleton<ComicRemoteDataSource>(
      () => ComicRemoteDataSourceImpl());
}
