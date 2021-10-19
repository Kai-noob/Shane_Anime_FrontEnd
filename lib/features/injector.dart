import 'package:get_it/get_it.dart';
import 'package:movie_app/features/home/data/datasources/comic_datasource.dart';
import 'package:movie_app/features/home/data/datasources/comic_datasource_impl.dart';
import 'package:movie_app/features/home/data/repositories/comic_repository_impl.dart';
import 'package:movie_app/features/home/domain/repositories/comic_repo.dart';
import 'package:movie_app/features/home/domain/usecases/get_completed_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_episodes_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_hot_comic_usecase.dart';
import 'package:movie_app/features/home/domain/usecases/get_recent_usecase.dart';
import 'package:movie_app/features/home/presentation/bloc/bloc/hot_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/bloc/recent_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/details/bloc/details_bloc.dart';
import 'package:movie_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source_impl.dart';
import 'package:movie_app/features/userAccount/data/repositories/auth_repo_impl.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_in_usecase.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_up_usecase.dart';
import 'package:movie_app/features/userAccount/presentation/bloc/auth_bloc.dart';
import 'package:movie_app/features/userAccount/presentation/bloc/bloc/sign_in_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerFactory(() => AuthBloc(sl()));

  sl.registerLazySingleton<SignUpUseCase>(() => SignUpUseCase(authRepo: sl()));

  sl.registerFactory(() => SignInBloc(sl()));

  sl.registerLazySingleton<SignInUseCase>(() => SignInUseCase(authRepo: sl()));

  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(authDataSource: sl()));

  sl.registerLazySingleton<AuthDataSource>(() => AuthDataSourceImpl());

  sl.registerFactory(() => HomeBloc(sl()));

  sl.registerFactory(() => RecentBloc(sl()));

  sl.registerFactory(() => HotBloc(sl()));

  sl.registerFactory(() => DetailsBloc(sl()));

  sl.registerLazySingleton<GetCompletedComicUseCase>(
      () => GetCompletedComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetEpisodesUseCase>(
      () => GetEpisodesUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetHotComicUseCase>(
      () => GetHotComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<GetRecentComicUseCase>(
      () => GetRecentComicUseCase(comicRepo: sl()));

  sl.registerLazySingleton<ComicRepo>(
      () => ComicRepoImpl(remoteDataSource: sl()));

  sl.registerLazySingleton<ComicRemoteDataSource>(
      () => ComicRemoteDataSourceImpl());
}
