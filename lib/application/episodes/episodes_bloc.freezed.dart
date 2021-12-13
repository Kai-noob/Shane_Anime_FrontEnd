// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodesEventTearOff {
  const _$EpisodesEventTearOff();

  _GetEpisodes getEpisodes() {
    return const _GetEpisodes();
  }

  _GetEpisode getEpisode(String episodeId) {
    return _GetEpisode(
      episodeId,
    );
  }

  _GetLatestEpisodes getLatestEpisodes(String comicId) {
    return _GetLatestEpisodes(
      comicId,
    );
  }
}

/// @nodoc
const $EpisodesEvent = _$EpisodesEventTearOff();

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEpisodes,
    required TResult Function(String episodeId) getEpisode,
    required TResult Function(String comicId) getLatestEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_GetEpisode value) getEpisode,
    required TResult Function(_GetLatestEpisodes value) getLatestEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

  final EpisodesEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodesEvent) _then;
}

/// @nodoc
abstract class _$GetEpisodesCopyWith<$Res> {
  factory _$GetEpisodesCopyWith(
          _GetEpisodes value, $Res Function(_GetEpisodes) then) =
      __$GetEpisodesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetEpisodesCopyWithImpl<$Res> extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$GetEpisodesCopyWith<$Res> {
  __$GetEpisodesCopyWithImpl(
      _GetEpisodes _value, $Res Function(_GetEpisodes) _then)
      : super(_value, (v) => _then(v as _GetEpisodes));

  @override
  _GetEpisodes get _value => super._value as _GetEpisodes;
}

/// @nodoc

class _$_GetEpisodes implements _GetEpisodes {
  const _$_GetEpisodes();

  @override
  String toString() {
    return 'EpisodesEvent.getEpisodes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetEpisodes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEpisodes,
    required TResult Function(String episodeId) getEpisode,
    required TResult Function(String comicId) getLatestEpisodes,
  }) {
    return getEpisodes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
  }) {
    return getEpisodes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_GetEpisode value) getEpisode,
    required TResult Function(_GetLatestEpisodes value) getLatestEpisodes,
  }) {
    return getEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
  }) {
    return getEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(this);
    }
    return orElse();
  }
}

abstract class _GetEpisodes implements EpisodesEvent {
  const factory _GetEpisodes() = _$_GetEpisodes;
}

/// @nodoc
abstract class _$GetEpisodeCopyWith<$Res> {
  factory _$GetEpisodeCopyWith(
          _GetEpisode value, $Res Function(_GetEpisode) then) =
      __$GetEpisodeCopyWithImpl<$Res>;
  $Res call({String episodeId});
}

/// @nodoc
class __$GetEpisodeCopyWithImpl<$Res> extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$GetEpisodeCopyWith<$Res> {
  __$GetEpisodeCopyWithImpl(
      _GetEpisode _value, $Res Function(_GetEpisode) _then)
      : super(_value, (v) => _then(v as _GetEpisode));

  @override
  _GetEpisode get _value => super._value as _GetEpisode;

  @override
  $Res call({
    Object? episodeId = freezed,
  }) {
    return _then(_GetEpisode(
      episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetEpisode implements _GetEpisode {
  const _$_GetEpisode(this.episodeId);

  @override
  final String episodeId;

  @override
  String toString() {
    return 'EpisodesEvent.getEpisode(episodeId: $episodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetEpisode &&
            const DeepCollectionEquality().equals(other.episodeId, episodeId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodeId));

  @JsonKey(ignore: true)
  @override
  _$GetEpisodeCopyWith<_GetEpisode> get copyWith =>
      __$GetEpisodeCopyWithImpl<_GetEpisode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEpisodes,
    required TResult Function(String episodeId) getEpisode,
    required TResult Function(String comicId) getLatestEpisodes,
  }) {
    return getEpisode(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
  }) {
    return getEpisode?.call(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisode != null) {
      return getEpisode(episodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_GetEpisode value) getEpisode,
    required TResult Function(_GetLatestEpisodes value) getLatestEpisodes,
  }) {
    return getEpisode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
  }) {
    return getEpisode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisode != null) {
      return getEpisode(this);
    }
    return orElse();
  }
}

abstract class _GetEpisode implements EpisodesEvent {
  const factory _GetEpisode(String episodeId) = _$_GetEpisode;

  String get episodeId;
  @JsonKey(ignore: true)
  _$GetEpisodeCopyWith<_GetEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetLatestEpisodesCopyWith<$Res> {
  factory _$GetLatestEpisodesCopyWith(
          _GetLatestEpisodes value, $Res Function(_GetLatestEpisodes) then) =
      __$GetLatestEpisodesCopyWithImpl<$Res>;
  $Res call({String comicId});
}

/// @nodoc
class __$GetLatestEpisodesCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res>
    implements _$GetLatestEpisodesCopyWith<$Res> {
  __$GetLatestEpisodesCopyWithImpl(
      _GetLatestEpisodes _value, $Res Function(_GetLatestEpisodes) _then)
      : super(_value, (v) => _then(v as _GetLatestEpisodes));

  @override
  _GetLatestEpisodes get _value => super._value as _GetLatestEpisodes;

  @override
  $Res call({
    Object? comicId = freezed,
  }) {
    return _then(_GetLatestEpisodes(
      comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetLatestEpisodes implements _GetLatestEpisodes {
  const _$_GetLatestEpisodes(this.comicId);

  @override
  final String comicId;

  @override
  String toString() {
    return 'EpisodesEvent.getLatestEpisodes(comicId: $comicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetLatestEpisodes &&
            const DeepCollectionEquality().equals(other.comicId, comicId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comicId));

  @JsonKey(ignore: true)
  @override
  _$GetLatestEpisodesCopyWith<_GetLatestEpisodes> get copyWith =>
      __$GetLatestEpisodesCopyWithImpl<_GetLatestEpisodes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEpisodes,
    required TResult Function(String episodeId) getEpisode,
    required TResult Function(String comicId) getLatestEpisodes,
  }) {
    return getLatestEpisodes(comicId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
  }) {
    return getLatestEpisodes?.call(comicId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEpisodes,
    TResult Function(String episodeId)? getEpisode,
    TResult Function(String comicId)? getLatestEpisodes,
    required TResult orElse(),
  }) {
    if (getLatestEpisodes != null) {
      return getLatestEpisodes(comicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_GetEpisode value) getEpisode,
    required TResult Function(_GetLatestEpisodes value) getLatestEpisodes,
  }) {
    return getLatestEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
  }) {
    return getLatestEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_GetEpisode value)? getEpisode,
    TResult Function(_GetLatestEpisodes value)? getLatestEpisodes,
    required TResult orElse(),
  }) {
    if (getLatestEpisodes != null) {
      return getLatestEpisodes(this);
    }
    return orElse();
  }
}

abstract class _GetLatestEpisodes implements EpisodesEvent {
  const factory _GetLatestEpisodes(String comicId) = _$_GetLatestEpisodes;

  String get comicId;
  @JsonKey(ignore: true)
  _$GetLatestEpisodesCopyWith<_GetLatestEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EpisodesStateTearOff {
  const _$EpisodesStateTearOff();

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

  _Loaded loaded(List<Episodes> episodes) {
    return _Loaded(
      episodes,
    );
  }

  _EpisodeLoaded episodeLoaded(Episodes episodes) {
    return _EpisodeLoaded(
      episodes,
    );
  }
}

/// @nodoc
const $EpisodesState = _$EpisodesStateTearOff();

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(Episodes episodes) episodeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_EpisodeLoaded value) episodeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

  final EpisodesState _value;
  // ignore: unused_field
  final $Res Function(EpisodesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EpisodesStateCopyWithImpl<$Res>
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
    return 'EpisodesState.initial()';
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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(Episodes episodes) episodeLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
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
    required TResult Function(_EpisodeLoaded value) episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EpisodesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$EpisodesStateCopyWithImpl<$Res>
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
    return 'EpisodesState.loading()';
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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(Episodes episodes) episodeLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
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
    required TResult Function(_EpisodeLoaded value) episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EpisodesState {
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
class __$ErrorCopyWithImpl<$Res> extends _$EpisodesStateCopyWithImpl<$Res>
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
    return 'EpisodesState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(Episodes episodes) episodeLoaded,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
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
    required TResult Function(_EpisodeLoaded value) episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EpisodesState {
  const factory _Error(ComicFailure failure) = _$_Error;

  ComicFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Episodes> episodes});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_Loaded(
      episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episodes>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.episodes);

  @override
  final List<Episodes> episodes;

  @override
  String toString() {
    return 'EpisodesState.loaded(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodes));

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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(Episodes episodes) episodeLoaded,
  }) {
    return loaded(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
  }) {
    return loaded?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodes);
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
    required TResult Function(_EpisodeLoaded value) episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
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
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EpisodesState {
  const factory _Loaded(List<Episodes> episodes) = _$_Loaded;

  List<Episodes> get episodes;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EpisodeLoadedCopyWith<$Res> {
  factory _$EpisodeLoadedCopyWith(
          _EpisodeLoaded value, $Res Function(_EpisodeLoaded) then) =
      __$EpisodeLoadedCopyWithImpl<$Res>;
  $Res call({Episodes episodes});

  $EpisodesCopyWith<$Res> get episodes;
}

/// @nodoc
class __$EpisodeLoadedCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res>
    implements _$EpisodeLoadedCopyWith<$Res> {
  __$EpisodeLoadedCopyWithImpl(
      _EpisodeLoaded _value, $Res Function(_EpisodeLoaded) _then)
      : super(_value, (v) => _then(v as _EpisodeLoaded));

  @override
  _EpisodeLoaded get _value => super._value as _EpisodeLoaded;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_EpisodeLoaded(
      episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as Episodes,
    ));
  }

  @override
  $EpisodesCopyWith<$Res> get episodes {
    return $EpisodesCopyWith<$Res>(_value.episodes, (value) {
      return _then(_value.copyWith(episodes: value));
    });
  }
}

/// @nodoc

class _$_EpisodeLoaded implements _EpisodeLoaded {
  const _$_EpisodeLoaded(this.episodes);

  @override
  final Episodes episodes;

  @override
  String toString() {
    return 'EpisodesState.episodeLoaded(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeLoaded &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodes));

  @JsonKey(ignore: true)
  @override
  _$EpisodeLoadedCopyWith<_EpisodeLoaded> get copyWith =>
      __$EpisodeLoadedCopyWithImpl<_EpisodeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(Episodes episodes) episodeLoaded,
  }) {
    return episodeLoaded(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
  }) {
    return episodeLoaded?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure failure)? error,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(Episodes episodes)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (episodeLoaded != null) {
      return episodeLoaded(episodes);
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
    required TResult Function(_EpisodeLoaded value) episodeLoaded,
  }) {
    return episodeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
  }) {
    return episodeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_EpisodeLoaded value)? episodeLoaded,
    required TResult orElse(),
  }) {
    if (episodeLoaded != null) {
      return episodeLoaded(this);
    }
    return orElse();
  }
}

abstract class _EpisodeLoaded implements EpisodesState {
  const factory _EpisodeLoaded(Episodes episodes) = _$_EpisodeLoaded;

  Episodes get episodes;
  @JsonKey(ignore: true)
  _$EpisodeLoadedCopyWith<_EpisodeLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
