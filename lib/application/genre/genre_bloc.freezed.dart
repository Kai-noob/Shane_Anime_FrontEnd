// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GenreEventTearOff {
  const _$GenreEventTearOff();

  _GetGenres getGenres() {
    return const _GetGenres();
  }

  _GetComicsByGenres getComicsByGenres(String genreId) {
    return _GetComicsByGenres(
      genreId,
    );
  }
}

/// @nodoc
const $GenreEvent = _$GenreEventTearOff();

/// @nodoc
mixin _$GenreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGenres,
    required TResult Function(String genreId) getComicsByGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGenres,
    TResult Function(String genreId)? getComicsByGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGenres,
    TResult Function(String genreId)? getComicsByGenres,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetComicsByGenres value) getComicsByGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetComicsByGenres value)? getComicsByGenres,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetComicsByGenres value)? getComicsByGenres,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreEventCopyWith<$Res> {
  factory $GenreEventCopyWith(
          GenreEvent value, $Res Function(GenreEvent) then) =
      _$GenreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenreEventCopyWithImpl<$Res> implements $GenreEventCopyWith<$Res> {
  _$GenreEventCopyWithImpl(this._value, this._then);

  final GenreEvent _value;
  // ignore: unused_field
  final $Res Function(GenreEvent) _then;
}

/// @nodoc
abstract class _$GetGenresCopyWith<$Res> {
  factory _$GetGenresCopyWith(
          _GetGenres value, $Res Function(_GetGenres) then) =
      __$GetGenresCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGenresCopyWithImpl<$Res> extends _$GenreEventCopyWithImpl<$Res>
    implements _$GetGenresCopyWith<$Res> {
  __$GetGenresCopyWithImpl(_GetGenres _value, $Res Function(_GetGenres) _then)
      : super(_value, (v) => _then(v as _GetGenres));

  @override
  _GetGenres get _value => super._value as _GetGenres;
}

/// @nodoc

class _$_GetGenres implements _GetGenres {
  const _$_GetGenres();

  @override
  String toString() {
    return 'GenreEvent.getGenres()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGenres);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGenres,
    required TResult Function(String genreId) getComicsByGenres,
  }) {
    return getGenres();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGenres,
    TResult Function(String genreId)? getComicsByGenres,
  }) {
    return getGenres?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGenres,
    TResult Function(String genreId)? getComicsByGenres,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetComicsByGenres value) getComicsByGenres,
  }) {
    return getGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetComicsByGenres value)? getComicsByGenres,
  }) {
    return getGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetComicsByGenres value)? getComicsByGenres,
    required TResult orElse(),
  }) {
    if (getGenres != null) {
      return getGenres(this);
    }
    return orElse();
  }
}

abstract class _GetGenres implements GenreEvent {
  const factory _GetGenres() = _$_GetGenres;
}

/// @nodoc
abstract class _$GetComicsByGenresCopyWith<$Res> {
  factory _$GetComicsByGenresCopyWith(
          _GetComicsByGenres value, $Res Function(_GetComicsByGenres) then) =
      __$GetComicsByGenresCopyWithImpl<$Res>;
  $Res call({String genreId});
}

/// @nodoc
class __$GetComicsByGenresCopyWithImpl<$Res>
    extends _$GenreEventCopyWithImpl<$Res>
    implements _$GetComicsByGenresCopyWith<$Res> {
  __$GetComicsByGenresCopyWithImpl(
      _GetComicsByGenres _value, $Res Function(_GetComicsByGenres) _then)
      : super(_value, (v) => _then(v as _GetComicsByGenres));

  @override
  _GetComicsByGenres get _value => super._value as _GetComicsByGenres;

  @override
  $Res call({
    Object? genreId = freezed,
  }) {
    return _then(_GetComicsByGenres(
      genreId == freezed
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetComicsByGenres implements _GetComicsByGenres {
  const _$_GetComicsByGenres(this.genreId);

  @override
  final String genreId;

  @override
  String toString() {
    return 'GenreEvent.getComicsByGenres(genreId: $genreId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetComicsByGenres &&
            (identical(other.genreId, genreId) || other.genreId == genreId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genreId);

  @JsonKey(ignore: true)
  @override
  _$GetComicsByGenresCopyWith<_GetComicsByGenres> get copyWith =>
      __$GetComicsByGenresCopyWithImpl<_GetComicsByGenres>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGenres,
    required TResult Function(String genreId) getComicsByGenres,
  }) {
    return getComicsByGenres(genreId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGenres,
    TResult Function(String genreId)? getComicsByGenres,
  }) {
    return getComicsByGenres?.call(genreId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGenres,
    TResult Function(String genreId)? getComicsByGenres,
    required TResult orElse(),
  }) {
    if (getComicsByGenres != null) {
      return getComicsByGenres(genreId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGenres value) getGenres,
    required TResult Function(_GetComicsByGenres value) getComicsByGenres,
  }) {
    return getComicsByGenres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetComicsByGenres value)? getComicsByGenres,
  }) {
    return getComicsByGenres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGenres value)? getGenres,
    TResult Function(_GetComicsByGenres value)? getComicsByGenres,
    required TResult orElse(),
  }) {
    if (getComicsByGenres != null) {
      return getComicsByGenres(this);
    }
    return orElse();
  }
}

abstract class _GetComicsByGenres implements GenreEvent {
  const factory _GetComicsByGenres(String genreId) = _$_GetComicsByGenres;

  String get genreId;
  @JsonKey(ignore: true)
  _$GetComicsByGenresCopyWith<_GetComicsByGenres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GenreStateTearOff {
  const _$GenreStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(ComicFailure failure) {
    return _Error(
      failure,
    );
  }

  _Loaded loaded(List<Genre> genres) {
    return _Loaded(
      genres,
    );
  }

  _Comics comicsLoaded(List<Comic> comics) {
    return _Comics(
      comics,
    );
  }
}

/// @nodoc
const $GenreState = _$GenreStateTearOff();

/// @nodoc
mixin _$GenreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Genre> genres) loaded,
    required TResult Function(List<Comic> comics) comicsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Comics value) comicsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreStateCopyWith<$Res> {
  factory $GenreStateCopyWith(
          GenreState value, $Res Function(GenreState) then) =
      _$GenreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenreStateCopyWithImpl<$Res> implements $GenreStateCopyWith<$Res> {
  _$GenreStateCopyWithImpl(this._value, this._then);

  final GenreState _value;
  // ignore: unused_field
  final $Res Function(GenreState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GenreStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GenreState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Genre> genres) loaded,
    required TResult Function(List<Comic> comics) comicsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Comics value) comicsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GenreState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$GenreStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GenreState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Genre> genres) loaded,
    required TResult Function(List<Comic> comics) comicsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Comics value) comicsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GenreState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ComicFailure failure});

  $ComicFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$GenreStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ComicFailure,
    ));
  }

  @override
  $ComicFailureCopyWith<$Res> get failure {
    return $ComicFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.failure);

  @override
  final ComicFailure failure;

  @override
  String toString() {
    return 'GenreState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Genre> genres) loaded,
    required TResult Function(List<Comic> comics) comicsLoaded,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Comics value) comicsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GenreState {
  const factory _Error(ComicFailure failure) = _$_Error;

  ComicFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Genre> genres});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$GenreStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_Loaded(
      genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.genres);

  @override
  final List<Genre> genres;

  @override
  String toString() {
    return 'GenreState.loaded(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.genres, genres));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genres));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Genre> genres) loaded,
    required TResult Function(List<Comic> comics) comicsLoaded,
  }) {
    return loaded(genres);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
  }) {
    return loaded?.call(genres);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(genres);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Comics value) comicsLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GenreState {
  const factory _Loaded(List<Genre> genres) = _$_Loaded;

  List<Genre> get genres;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ComicsCopyWith<$Res> {
  factory _$ComicsCopyWith(_Comics value, $Res Function(_Comics) then) =
      __$ComicsCopyWithImpl<$Res>;
  $Res call({List<Comic> comics});
}

/// @nodoc
class __$ComicsCopyWithImpl<$Res> extends _$GenreStateCopyWithImpl<$Res>
    implements _$ComicsCopyWith<$Res> {
  __$ComicsCopyWithImpl(_Comics _value, $Res Function(_Comics) _then)
      : super(_value, (v) => _then(v as _Comics));

  @override
  _Comics get _value => super._value as _Comics;

  @override
  $Res call({
    Object? comics = freezed,
  }) {
    return _then(_Comics(
      comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc

class _$_Comics implements _Comics {
  const _$_Comics(this.comics);

  @override
  final List<Comic> comics;

  @override
  String toString() {
    return 'GenreState.comicsLoaded(comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comics &&
            const DeepCollectionEquality().equals(other.comics, comics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comics));

  @JsonKey(ignore: true)
  @override
  _$ComicsCopyWith<_Comics> get copyWith =>
      __$ComicsCopyWithImpl<_Comics>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Genre> genres) loaded,
    required TResult Function(List<Comic> comics) comicsLoaded,
  }) {
    return comicsLoaded(comics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
  }) {
    return comicsLoaded?.call(comics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Genre> genres)? loaded,
    TResult Function(List<Comic> comics)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (comicsLoaded != null) {
      return comicsLoaded(comics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Comics value) comicsLoaded,
  }) {
    return comicsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
  }) {
    return comicsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Comics value)? comicsLoaded,
    required TResult orElse(),
  }) {
    if (comicsLoaded != null) {
      return comicsLoaded(this);
    }
    return orElse();
  }
}

abstract class _Comics implements GenreState {
  const factory _Comics(List<Comic> comics) = _$_Comics;

  List<Comic> get comics;
  @JsonKey(ignore: true)
  _$ComicsCopyWith<_Comics> get copyWith => throw _privateConstructorUsedError;
}
