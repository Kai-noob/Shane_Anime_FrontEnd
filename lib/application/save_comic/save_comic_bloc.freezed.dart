// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_comic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveComicEventTearOff {
  const _$SaveComicEventTearOff();

  _SaveComic saveComic(String comicId) {
    return _SaveComic(
      comicId,
    );
  }

  _RemoveComic removeComic(String comicId) {
    return _RemoveComic(
      comicId,
    );
  }

  _WatchSaved watchSaved() {
    return const _WatchSaved();
  }

  _SavedComicsReceived savedComicsReceived(
      Either<ComicFailure, List<SaveComics>> failureOrComics) {
    return _SavedComicsReceived(
      failureOrComics,
    );
  }
}

/// @nodoc
const $SaveComicEvent = _$SaveComicEventTearOff();

/// @nodoc
mixin _$SaveComicEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comicId) saveComic,
    required TResult Function(String comicId) removeComic,
    required TResult Function() watchSaved,
    required TResult Function(
            Either<ComicFailure, List<SaveComics>> failureOrComics)
        savedComicsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveComic value) saveComic,
    required TResult Function(_RemoveComic value) removeComic,
    required TResult Function(_WatchSaved value) watchSaved,
    required TResult Function(_SavedComicsReceived value) savedComicsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveComicEventCopyWith<$Res> {
  factory $SaveComicEventCopyWith(
          SaveComicEvent value, $Res Function(SaveComicEvent) then) =
      _$SaveComicEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveComicEventCopyWithImpl<$Res>
    implements $SaveComicEventCopyWith<$Res> {
  _$SaveComicEventCopyWithImpl(this._value, this._then);

  final SaveComicEvent _value;
  // ignore: unused_field
  final $Res Function(SaveComicEvent) _then;
}

/// @nodoc
abstract class _$SaveComicCopyWith<$Res> {
  factory _$SaveComicCopyWith(
          _SaveComic value, $Res Function(_SaveComic) then) =
      __$SaveComicCopyWithImpl<$Res>;
  $Res call({String comicId});
}

/// @nodoc
class __$SaveComicCopyWithImpl<$Res> extends _$SaveComicEventCopyWithImpl<$Res>
    implements _$SaveComicCopyWith<$Res> {
  __$SaveComicCopyWithImpl(_SaveComic _value, $Res Function(_SaveComic) _then)
      : super(_value, (v) => _then(v as _SaveComic));

  @override
  _SaveComic get _value => super._value as _SaveComic;

  @override
  $Res call({
    Object? comicId = freezed,
  }) {
    return _then(_SaveComic(
      comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveComic implements _SaveComic {
  const _$_SaveComic(this.comicId);

  @override
  final String comicId;

  @override
  String toString() {
    return 'SaveComicEvent.saveComic(comicId: $comicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveComic &&
            const DeepCollectionEquality().equals(other.comicId, comicId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comicId));

  @JsonKey(ignore: true)
  @override
  _$SaveComicCopyWith<_SaveComic> get copyWith =>
      __$SaveComicCopyWithImpl<_SaveComic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comicId) saveComic,
    required TResult Function(String comicId) removeComic,
    required TResult Function() watchSaved,
    required TResult Function(
            Either<ComicFailure, List<SaveComics>> failureOrComics)
        savedComicsReceived,
  }) {
    return saveComic(comicId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
  }) {
    return saveComic?.call(comicId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
    required TResult orElse(),
  }) {
    if (saveComic != null) {
      return saveComic(comicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveComic value) saveComic,
    required TResult Function(_RemoveComic value) removeComic,
    required TResult Function(_WatchSaved value) watchSaved,
    required TResult Function(_SavedComicsReceived value) savedComicsReceived,
  }) {
    return saveComic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
  }) {
    return saveComic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
    required TResult orElse(),
  }) {
    if (saveComic != null) {
      return saveComic(this);
    }
    return orElse();
  }
}

abstract class _SaveComic implements SaveComicEvent {
  const factory _SaveComic(String comicId) = _$_SaveComic;

  String get comicId;
  @JsonKey(ignore: true)
  _$SaveComicCopyWith<_SaveComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveComicCopyWith<$Res> {
  factory _$RemoveComicCopyWith(
          _RemoveComic value, $Res Function(_RemoveComic) then) =
      __$RemoveComicCopyWithImpl<$Res>;
  $Res call({String comicId});
}

/// @nodoc
class __$RemoveComicCopyWithImpl<$Res>
    extends _$SaveComicEventCopyWithImpl<$Res>
    implements _$RemoveComicCopyWith<$Res> {
  __$RemoveComicCopyWithImpl(
      _RemoveComic _value, $Res Function(_RemoveComic) _then)
      : super(_value, (v) => _then(v as _RemoveComic));

  @override
  _RemoveComic get _value => super._value as _RemoveComic;

  @override
  $Res call({
    Object? comicId = freezed,
  }) {
    return _then(_RemoveComic(
      comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveComic implements _RemoveComic {
  const _$_RemoveComic(this.comicId);

  @override
  final String comicId;

  @override
  String toString() {
    return 'SaveComicEvent.removeComic(comicId: $comicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveComic &&
            const DeepCollectionEquality().equals(other.comicId, comicId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comicId));

  @JsonKey(ignore: true)
  @override
  _$RemoveComicCopyWith<_RemoveComic> get copyWith =>
      __$RemoveComicCopyWithImpl<_RemoveComic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comicId) saveComic,
    required TResult Function(String comicId) removeComic,
    required TResult Function() watchSaved,
    required TResult Function(
            Either<ComicFailure, List<SaveComics>> failureOrComics)
        savedComicsReceived,
  }) {
    return removeComic(comicId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
  }) {
    return removeComic?.call(comicId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
    required TResult orElse(),
  }) {
    if (removeComic != null) {
      return removeComic(comicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveComic value) saveComic,
    required TResult Function(_RemoveComic value) removeComic,
    required TResult Function(_WatchSaved value) watchSaved,
    required TResult Function(_SavedComicsReceived value) savedComicsReceived,
  }) {
    return removeComic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
  }) {
    return removeComic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
    required TResult orElse(),
  }) {
    if (removeComic != null) {
      return removeComic(this);
    }
    return orElse();
  }
}

abstract class _RemoveComic implements SaveComicEvent {
  const factory _RemoveComic(String comicId) = _$_RemoveComic;

  String get comicId;
  @JsonKey(ignore: true)
  _$RemoveComicCopyWith<_RemoveComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchSavedCopyWith<$Res> {
  factory _$WatchSavedCopyWith(
          _WatchSaved value, $Res Function(_WatchSaved) then) =
      __$WatchSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchSavedCopyWithImpl<$Res> extends _$SaveComicEventCopyWithImpl<$Res>
    implements _$WatchSavedCopyWith<$Res> {
  __$WatchSavedCopyWithImpl(
      _WatchSaved _value, $Res Function(_WatchSaved) _then)
      : super(_value, (v) => _then(v as _WatchSaved));

  @override
  _WatchSaved get _value => super._value as _WatchSaved;
}

/// @nodoc

class _$_WatchSaved implements _WatchSaved {
  const _$_WatchSaved();

  @override
  String toString() {
    return 'SaveComicEvent.watchSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comicId) saveComic,
    required TResult Function(String comicId) removeComic,
    required TResult Function() watchSaved,
    required TResult Function(
            Either<ComicFailure, List<SaveComics>> failureOrComics)
        savedComicsReceived,
  }) {
    return watchSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
  }) {
    return watchSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
    required TResult orElse(),
  }) {
    if (watchSaved != null) {
      return watchSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveComic value) saveComic,
    required TResult Function(_RemoveComic value) removeComic,
    required TResult Function(_WatchSaved value) watchSaved,
    required TResult Function(_SavedComicsReceived value) savedComicsReceived,
  }) {
    return watchSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
  }) {
    return watchSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
    required TResult orElse(),
  }) {
    if (watchSaved != null) {
      return watchSaved(this);
    }
    return orElse();
  }
}

abstract class _WatchSaved implements SaveComicEvent {
  const factory _WatchSaved() = _$_WatchSaved;
}

/// @nodoc
abstract class _$SavedComicsReceivedCopyWith<$Res> {
  factory _$SavedComicsReceivedCopyWith(_SavedComicsReceived value,
          $Res Function(_SavedComicsReceived) then) =
      __$SavedComicsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ComicFailure, List<SaveComics>> failureOrComics});
}

/// @nodoc
class __$SavedComicsReceivedCopyWithImpl<$Res>
    extends _$SaveComicEventCopyWithImpl<$Res>
    implements _$SavedComicsReceivedCopyWith<$Res> {
  __$SavedComicsReceivedCopyWithImpl(
      _SavedComicsReceived _value, $Res Function(_SavedComicsReceived) _then)
      : super(_value, (v) => _then(v as _SavedComicsReceived));

  @override
  _SavedComicsReceived get _value => super._value as _SavedComicsReceived;

  @override
  $Res call({
    Object? failureOrComics = freezed,
  }) {
    return _then(_SavedComicsReceived(
      failureOrComics == freezed
          ? _value.failureOrComics
          : failureOrComics // ignore: cast_nullable_to_non_nullable
              as Either<ComicFailure, List<SaveComics>>,
    ));
  }
}

/// @nodoc

class _$_SavedComicsReceived implements _SavedComicsReceived {
  const _$_SavedComicsReceived(this.failureOrComics);

  @override
  final Either<ComicFailure, List<SaveComics>> failureOrComics;

  @override
  String toString() {
    return 'SaveComicEvent.savedComicsReceived(failureOrComics: $failureOrComics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedComicsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrComics, failureOrComics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrComics));

  @JsonKey(ignore: true)
  @override
  _$SavedComicsReceivedCopyWith<_SavedComicsReceived> get copyWith =>
      __$SavedComicsReceivedCopyWithImpl<_SavedComicsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String comicId) saveComic,
    required TResult Function(String comicId) removeComic,
    required TResult Function() watchSaved,
    required TResult Function(
            Either<ComicFailure, List<SaveComics>> failureOrComics)
        savedComicsReceived,
  }) {
    return savedComicsReceived(failureOrComics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
  }) {
    return savedComicsReceived?.call(failureOrComics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId)? saveComic,
    TResult Function(String comicId)? removeComic,
    TResult Function()? watchSaved,
    TResult Function(Either<ComicFailure, List<SaveComics>> failureOrComics)?
        savedComicsReceived,
    required TResult orElse(),
  }) {
    if (savedComicsReceived != null) {
      return savedComicsReceived(failureOrComics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveComic value) saveComic,
    required TResult Function(_RemoveComic value) removeComic,
    required TResult Function(_WatchSaved value) watchSaved,
    required TResult Function(_SavedComicsReceived value) savedComicsReceived,
  }) {
    return savedComicsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
  }) {
    return savedComicsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveComic value)? saveComic,
    TResult Function(_RemoveComic value)? removeComic,
    TResult Function(_WatchSaved value)? watchSaved,
    TResult Function(_SavedComicsReceived value)? savedComicsReceived,
    required TResult orElse(),
  }) {
    if (savedComicsReceived != null) {
      return savedComicsReceived(this);
    }
    return orElse();
  }
}

abstract class _SavedComicsReceived implements SaveComicEvent {
  const factory _SavedComicsReceived(
          Either<ComicFailure, List<SaveComics>> failureOrComics) =
      _$_SavedComicsReceived;

  Either<ComicFailure, List<SaveComics>> get failureOrComics;
  @JsonKey(ignore: true)
  _$SavedComicsReceivedCopyWith<_SavedComicsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SaveComicStateTearOff {
  const _$SaveComicStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(ComicFailure comicFailure) {
    return _Error(
      comicFailure,
    );
  }

  _CreateSuccess createSuccess() {
    return const _CreateSuccess();
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _WatchSuccess watchSuccess(List<SaveComics> saveComics) {
    return _WatchSuccess(
      saveComics,
    );
  }
}

/// @nodoc
const $SaveComicState = _$SaveComicStateTearOff();

/// @nodoc
mixin _$SaveComicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveComicStateCopyWith<$Res> {
  factory $SaveComicStateCopyWith(
          SaveComicState value, $Res Function(SaveComicState) then) =
      _$SaveComicStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveComicStateCopyWithImpl<$Res>
    implements $SaveComicStateCopyWith<$Res> {
  _$SaveComicStateCopyWithImpl(this._value, this._then);

  final SaveComicState _value;
  // ignore: unused_field
  final $Res Function(SaveComicState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SaveComicStateCopyWithImpl<$Res>
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
    return 'SaveComicState.initial()';
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
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
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
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SaveComicState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SaveComicStateCopyWithImpl<$Res>
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
    return 'SaveComicState.loading()';
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
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
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
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SaveComicState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ComicFailure comicFailure});

  $ComicFailureCopyWith<$Res> get comicFailure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$SaveComicStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? comicFailure = freezed,
  }) {
    return _then(_Error(
      comicFailure == freezed
          ? _value.comicFailure
          : comicFailure // ignore: cast_nullable_to_non_nullable
              as ComicFailure,
    ));
  }

  @override
  $ComicFailureCopyWith<$Res> get comicFailure {
    return $ComicFailureCopyWith<$Res>(_value.comicFailure, (value) {
      return _then(_value.copyWith(comicFailure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.comicFailure);

  @override
  final ComicFailure comicFailure;

  @override
  String toString() {
    return 'SaveComicState.error(comicFailure: $comicFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality()
                .equals(other.comicFailure, comicFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(comicFailure));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) {
    return error(comicFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) {
    return error?.call(comicFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(comicFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SaveComicState {
  const factory _Error(ComicFailure comicFailure) = _$_Error;

  ComicFailure get comicFailure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateSuccessCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(
          _CreateSuccess value, $Res Function(_CreateSuccess) then) =
      __$CreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    extends _$SaveComicStateCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(
      _CreateSuccess _value, $Res Function(_CreateSuccess) _then)
      : super(_value, (v) => _then(v as _CreateSuccess));

  @override
  _CreateSuccess get _value => super._value as _CreateSuccess;
}

/// @nodoc

class _$_CreateSuccess implements _CreateSuccess {
  const _$_CreateSuccess();

  @override
  String toString() {
    return 'SaveComicState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements SaveComicState {
  const factory _CreateSuccess() = _$_CreateSuccess;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$SaveComicStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'SaveComicState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements SaveComicState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$WatchSuccessCopyWith<$Res> {
  factory _$WatchSuccessCopyWith(
          _WatchSuccess value, $Res Function(_WatchSuccess) then) =
      __$WatchSuccessCopyWithImpl<$Res>;
  $Res call({List<SaveComics> saveComics});
}

/// @nodoc
class __$WatchSuccessCopyWithImpl<$Res>
    extends _$SaveComicStateCopyWithImpl<$Res>
    implements _$WatchSuccessCopyWith<$Res> {
  __$WatchSuccessCopyWithImpl(
      _WatchSuccess _value, $Res Function(_WatchSuccess) _then)
      : super(_value, (v) => _then(v as _WatchSuccess));

  @override
  _WatchSuccess get _value => super._value as _WatchSuccess;

  @override
  $Res call({
    Object? saveComics = freezed,
  }) {
    return _then(_WatchSuccess(
      saveComics == freezed
          ? _value.saveComics
          : saveComics // ignore: cast_nullable_to_non_nullable
              as List<SaveComics>,
    ));
  }
}

/// @nodoc

class _$_WatchSuccess implements _WatchSuccess {
  const _$_WatchSuccess(this.saveComics);

  @override
  final List<SaveComics> saveComics;

  @override
  String toString() {
    return 'SaveComicState.watchSuccess(saveComics: $saveComics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchSuccess &&
            const DeepCollectionEquality()
                .equals(other.saveComics, saveComics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(saveComics));

  @JsonKey(ignore: true)
  @override
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith =>
      __$WatchSuccessCopyWithImpl<_WatchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ComicFailure comicFailure) error,
    required TResult Function() createSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function(List<SaveComics> saveComics) watchSuccess,
  }) {
    return watchSuccess(saveComics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
  }) {
    return watchSuccess?.call(saveComics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ComicFailure comicFailure)? error,
    TResult Function()? createSuccess,
    TResult Function()? deleteSuccess,
    TResult Function(List<SaveComics> saveComics)? watchSuccess,
    required TResult orElse(),
  }) {
    if (watchSuccess != null) {
      return watchSuccess(saveComics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_WatchSuccess value) watchSuccess,
  }) {
    return watchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
  }) {
    return watchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_WatchSuccess value)? watchSuccess,
    required TResult orElse(),
  }) {
    if (watchSuccess != null) {
      return watchSuccess(this);
    }
    return orElse();
  }
}

abstract class _WatchSuccess implements SaveComicState {
  const factory _WatchSuccess(List<SaveComics> saveComics) = _$_WatchSuccess;

  List<SaveComics> get saveComics;
  @JsonKey(ignore: true)
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
