import 'package:get_it/get_it.dart';
import 'package:movie_app/features/home/domain/usecases/filter_episode.dart';
import 'package:movie_app/features/home/domain/usecases/get_limit_completed_comic.dart';
import 'package:movie_app/features/home/domain/usecases/get_limit_hot_comic.dart';
import 'genre/data/datasources/genre_datasource.dart';
import 'genre/data/datasources/genre_datasource_impl.dart';
import 'genre/data/repositories/genre_repo_impl.dart';
import 'genre/domain/repositories/genre_repo.dart';
import 'genre/domain/usecases/get_comics_usecase.dart';
import 'genre/domain/usecases/get_genre_usecase.dart';
import 'genre/domain/usecases/get_genres_usecase.dart';
import 'genre/presentation/bloc/genre_bloc.dart';
import 'home/domain/usecases/check_pdf_or_images.dart';
import 'home/domain/usecases/get_images.dart';
import 'home/domain/usecases/get_pdf.dart';

import 'home/data/datasources/comic_datasource.dart';
import 'home/data/datasources/comic_datasource_impl.dart';
import 'home/data/repositories/comic_repository_impl.dart';
import 'home/domain/repositories/comic_repo.dart';
import 'home/domain/usecases/get_all_completed_comic.dart';
import 'home/domain/usecases/get_episodes.dart';
import 'home/domain/usecases/get_all_hot_comic.dart';
import 'home/domain/usecases/get_all_recent_episode.dart';
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

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerFactory(() => CompleteBloc(sl(), sl()));

  sl.registerFactory(() => GenreBloc(sl(), sl()));

  sl.registerFactory(() => RecentBloc(sl(), sl()));

  sl.registerFactory(() => HotBloc(sl(), sl()));

  sl.registerFactory(() => DetailsBloc(sl(), sl(), sl(), sl(), sl()));

  sl.registerFactory(() => SearchBloc(sl()));

  sl.registerLazySingleton<SearchComicUseCase>(
      () => SearchComicUseCase(searchRepo: sl()));

  sl.registerLazySingleton<SearchRepo>(
      () => SearchComicRepoImpl(searchComicDataSource: sl()));

  sl.registerLazySingleton<SearchComicDataSource>(
      () => SearchComicDataSourceImpl());

  sl.registerLazySingleton<GetCompletedComic>(
      () => GetCompletedComic(comicRepo: sl()));

  sl.registerLazySingleton<GetLimitComplteeComic>(
      () => GetLimitComplteeComic(comicRepo: sl()));

  sl.registerLazySingleton<GetEpisodes>(() => GetEpisodes(comicRepo: sl()));

  sl.registerLazySingleton<FilterEpisode>(() => FilterEpisode(comicRepo: sl()));

  sl.registerLazySingleton<GetImages>(() => GetImages(comicRepo: sl()));

  sl.registerLazySingleton<GetPdf>(() => GetPdf(comicRepo: sl()));

  sl.registerLazySingleton<CheckPdfOrImages>(
      () => CheckPdfOrImages(comicRepo: sl()));

  sl.registerLazySingleton<GetHotComic>(() => GetHotComic(comicRepo: sl()));

  sl.registerLazySingleton<GetLimitHotComic>(
      () => GetLimitHotComic(comicRepo: sl()));

  sl.registerLazySingleton<GetGenresUsecase>(
      () => GetGenresUsecase(genreRepo: sl()));

  sl.registerLazySingleton<GetGenreUsecase>(
      () => GetGenreUsecase(genreRepo: sl()));

  sl.registerLazySingleton<GetComicsUseCase>(
      () => GetComicsUseCase(genreRepo: sl()));

  sl.registerLazySingleton<GetRecentEpisode>(
      () => GetRecentEpisode(comicRepo: sl()));

  sl.registerLazySingleton<ComicRepo>(
      () => ComicRepoImpl(remoteDataSource: sl()));

  sl.registerLazySingleton<GenreRepo>(
      () => GenreRepoImpl(genreDataSource: sl()));

  sl.registerLazySingleton<GenreDataSource>(() => GenreDataSourceImpl());

  sl.registerLazySingleton<ComicRemoteDataSource>(
      () => ComicRemoteDataSourceImpl());
}
