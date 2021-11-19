// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/bloc/auth_bloc.dart' as _i17;
import 'application/comic_details/comic_details_bloc.dart' as _i18;
import 'application/comic_reader/comic_reader_bloc.dart' as _i19;
import 'application/home/complete_comic/complete_comic_bloc.dart' as _i20;
import 'application/home/hot_comic/hot_comic_bloc.dart' as _i21;
import 'application/save_comic/save_comic_bloc.dart' as _i14;
import 'application/sign_in/bloc/signin_bloc.dart' as _i15;
import 'application/user_actions/user_actions_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/comic/i_comic_repository.dart' as _i8;
import 'domain/save_comic/i_save_comic_repository.dart' as _i10;
import 'domain/user_actions/i_user_actions_repository.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/comic/comic_repository_impl.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i22;
import 'infrastructure/save_comic/save_comic_repository_impl.dart' as _i11;
import 'infrastructure/user_actions/user_actions_repository_impl.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.ISaveComicRepository>(
      () => _i11.SaveComicRepositoryImpl(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.IUserActionsRepository>(
      () => _i13.UserActionsRepositoryImpl(get<_i4.FirebaseFirestore>()));
  gh.factory<_i14.SaveComicBloc>(
      () => _i14.SaveComicBloc(get<_i10.ISaveComicRepository>()));
  gh.factory<_i15.SigninBloc>(() => _i15.SigninBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.UserActionsBloc>(() => _i16.UserActionsBloc(
      get<_i6.IAuthFacade>(), get<_i12.IUserActionsRepository>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.ComicDetailsBloc>(
      () => _i18.ComicDetailsBloc(get<_i8.IComicRepository>()));
  gh.factory<_i19.ComicReaderBloc>(
      () => _i19.ComicReaderBloc(get<_i8.IComicRepository>()));
  gh.factory<_i20.CompleteComicBloc>(
      () => _i20.CompleteComicBloc(get<_i8.IComicRepository>()));
  gh.factory<_i21.HotComicBloc>(
      () => _i21.HotComicBloc(get<_i8.IComicRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
