// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc/auth_bloc.dart' as _i24;
import 'application/bloc/comment_bloc.dart' as _i27;
import 'application/comic_details/comic_details_bloc.dart' as _i25;
import 'application/comic_reader/comic_reader_bloc.dart' as _i26;
import 'application/episodes/episodes_bloc.dart' as _i29;
import 'application/genre/genre_bloc.dart' as _i30;
import 'application/home/all_comics/all_comics_bloc.dart' as _i23;
import 'application/home/complete_comic/complete_comic_bloc.dart' as _i28;
import 'application/home/hot_comic/hot_comic_bloc.dart' as _i31;
import 'application/save_comic/save_comic_bloc.dart' as _i18;
import 'application/search/search_bloc.dart' as _i19;
import 'application/sign_in/bloc/signin_bloc.dart' as _i20;
import 'application/upcoming_comic/upcoming_comic_bloc.dart' as _i21;
import 'application/user_actions/user_actions_bloc.dart' as _i22;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/comic/i_comic_repository.dart' as _i8;
import 'domain/genre/i_genre_repository.dart' as _i10;
import 'domain/save_comic/i_save_comic_repository.dart' as _i12;
import 'domain/upcoming_comic/i_upcoming_comic_repo.dart' as _i14;
import 'domain/user_actions/i_user_actions_repository.dart' as _i16;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/comic/comic_repository_impl.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i32;
import 'infrastructure/genre/genre_repository_impl.dart' as _i11;
import 'infrastructure/save_comic/save_comic_repository_impl.dart' as _i13;
import 'infrastructure/upcoming_comic/upcoming_comic_repo_impl.dart' as _i15;
import 'infrastructure/user_actions/user_actions_repository_impl.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IComicRepository>(
      () => _i9.ComicRepositoryImpl(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IGenreRepository>(
      () => _i11.GenreRepositoryImpl(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.ISaveComicRepository>(
      () => _i13.SaveComicRepositoryImpl(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IUpcomingComicRepo>(
      () => _i15.UpComingComicRepoImpl(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i16.IUserActionsRepository>(
      () => _i17.UserActionsRepositoryImpl(get<_i4.FirebaseFirestore>()));
  gh.factory<_i18.SaveComicBloc>(
      () => _i18.SaveComicBloc(get<_i12.ISaveComicRepository>()));
  gh.factory<_i19.SearchBloc>(
      () => _i19.SearchBloc(get<_i8.IComicRepository>()));
  gh.factory<_i20.SigninBloc>(() => _i20.SigninBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i21.UpcomingComicBloc>(
      () => _i21.UpcomingComicBloc(get<_i14.IUpcomingComicRepo>()));
  gh.factory<_i22.UserActionsBloc>(() => _i22.UserActionsBloc(
      get<_i6.IAuthFacade>(), get<_i16.IUserActionsRepository>()));
  gh.factory<_i23.AllComicsBloc>(
      () => _i23.AllComicsBloc(get<_i8.IComicRepository>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i25.ComicDetailsBloc>(
      () => _i25.ComicDetailsBloc(get<_i8.IComicRepository>()));
  gh.factory<_i26.ComicReaderBloc>(
      () => _i26.ComicReaderBloc(get<_i8.IComicRepository>()));
  gh.factory<_i27.CommentBloc>(
      () => _i27.CommentBloc(get<_i16.IUserActionsRepository>()));
  gh.factory<_i28.CompleteComicBloc>(
      () => _i28.CompleteComicBloc(get<_i8.IComicRepository>()));
  gh.factory<_i29.EpisodesBloc>(
      () => _i29.EpisodesBloc(get<_i8.IComicRepository>()));
  gh.factory<_i30.GenreBloc>(
      () => _i30.GenreBloc(get<_i10.IGenreRepository>()));
  gh.factory<_i31.HotComicBloc>(
      () => _i31.HotComicBloc(get<_i8.IComicRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}
