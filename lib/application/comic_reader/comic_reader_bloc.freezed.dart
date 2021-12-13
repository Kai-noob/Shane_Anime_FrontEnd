// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_reader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicReaderEventTearOff {
  const _$ComicReaderEventTearOff();

  _CheckPdf checkPdf(String comicId, String episodeName, int episodeNumber) {
    return _CheckPdf(
      comicId,
      episodeName,
      episodeNumber,
    );
  }

  _ChangePdf changePdf(String comicId, String episodeName, int episodeNumber) {
    return _ChangePdf(
      comicId,
      episodeName,
      episodeNumber,
    );
  }
}

/// @nodoc
const $ComicReaderEvent = _$ComicReaderEventTearOff();

/// @nodoc
mixin _$ComicReaderEvent {
  String get comicId => throw _privateConstructorUsedError;
  String get episodeName => throw _privateConstructorUsedError;
  int get episodeNumber => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String comicId, String episodeName, int episodeNumber)
        checkPdf,
    required TResult Function(
            String comicId, String episodeName, int episodeNumber)
        changePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        checkPdf,
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        changePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        checkPdf,
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        changePdf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPdf value) checkPdf,
    required TResult Function(_ChangePdf value) changePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPdf value)? checkPdf,
    TResult Function(_ChangePdf value)? changePdf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPdf value)? checkPdf,
    TResult Function(_ChangePdf value)? changePdf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicReaderEventCopyWith<ComicReaderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicReaderEventCopyWith<$Res> {
  factory $ComicReaderEventCopyWith(
          ComicReaderEvent value, $Res Function(ComicReaderEvent) then) =
      _$ComicReaderEventCopyWithImpl<$Res>;
  $Res call({String comicId, String episodeName, int episodeNumber});
}

/// @nodoc
class _$ComicReaderEventCopyWithImpl<$Res>
    implements $ComicReaderEventCopyWith<$Res> {
  _$ComicReaderEventCopyWithImpl(this._value, this._then);

  final ComicReaderEvent _value;
  // ignore: unused_field
  final $Res Function(ComicReaderEvent) _then;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? episodeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      comicId: comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeName: episodeName == freezed
          ? _value.episodeName
          : episodeName // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CheckPdfCopyWith<$Res>
    implements $ComicReaderEventCopyWith<$Res> {
  factory _$CheckPdfCopyWith(_CheckPdf value, $Res Function(_CheckPdf) then) =
      __$CheckPdfCopyWithImpl<$Res>;
  @override
  $Res call({String comicId, String episodeName, int episodeNumber});
}

/// @nodoc
class __$CheckPdfCopyWithImpl<$Res> extends _$ComicReaderEventCopyWithImpl<$Res>
    implements _$CheckPdfCopyWith<$Res> {
  __$CheckPdfCopyWithImpl(_CheckPdf _value, $Res Function(_CheckPdf) _then)
      : super(_value, (v) => _then(v as _CheckPdf));

  @override
  _CheckPdf get _value => super._value as _CheckPdf;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? episodeNumber = freezed,
  }) {
    return _then(_CheckPdf(
      comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeName == freezed
          ? _value.episodeName
          : episodeName // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CheckPdf implements _CheckPdf {
  const _$_CheckPdf(this.comicId, this.episodeName, this.episodeNumber);

  @override
  final String comicId;
  @override
  final String episodeName;
  @override
  final int episodeNumber;

  @override
  String toString() {
    return 'ComicReaderEvent.checkPdf(comicId: $comicId, episodeName: $episodeName, episodeNumber: $episodeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckPdf &&
            const DeepCollectionEquality().equals(other.comicId, comicId) &&
            const DeepCollectionEquality()
                .equals(other.episodeName, episodeName) &&
            const DeepCollectionEquality()
                .equals(other.episodeNumber, episodeNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comicId),
      const DeepCollectionEquality().hash(episodeName),
      const DeepCollectionEquality().hash(episodeNumber));

  @JsonKey(ignore: true)
  @override
  _$CheckPdfCopyWith<_CheckPdf> get copyWith =>
      __$CheckPdfCopyWithImpl<_CheckPdf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String comicId, String episodeName, int episodeNumber)
        checkPdf,
    required TResult Function(
            String comicId, String episodeName, int episodeNumber)
        changePdf,
  }) {
    return checkPdf(comicId, episodeName, episodeNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        checkPdf,
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        changePdf,
  }) {
    return checkPdf?.call(comicId, episodeName, episodeNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        checkPdf,
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        changePdf,
    required TResult orElse(),
  }) {
    if (checkPdf != null) {
      return checkPdf(comicId, episodeName, episodeNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPdf value) checkPdf,
    required TResult Function(_ChangePdf value) changePdf,
  }) {
    return checkPdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPdf value)? checkPdf,
    TResult Function(_ChangePdf value)? changePdf,
  }) {
    return checkPdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPdf value)? checkPdf,
    TResult Function(_ChangePdf value)? changePdf,
    required TResult orElse(),
  }) {
    if (checkPdf != null) {
      return checkPdf(this);
    }
    return orElse();
  }
}

abstract class _CheckPdf implements ComicReaderEvent {
  const factory _CheckPdf(
      String comicId, String episodeName, int episodeNumber) = _$_CheckPdf;

  @override
  String get comicId;
  @override
  String get episodeName;
  @override
  int get episodeNumber;
  @override
  @JsonKey(ignore: true)
  _$CheckPdfCopyWith<_CheckPdf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangePdfCopyWith<$Res>
    implements $ComicReaderEventCopyWith<$Res> {
  factory _$ChangePdfCopyWith(
          _ChangePdf value, $Res Function(_ChangePdf) then) =
      __$ChangePdfCopyWithImpl<$Res>;
  @override
  $Res call({String comicId, String episodeName, int episodeNumber});
}

/// @nodoc
class __$ChangePdfCopyWithImpl<$Res>
    extends _$ComicReaderEventCopyWithImpl<$Res>
    implements _$ChangePdfCopyWith<$Res> {
  __$ChangePdfCopyWithImpl(_ChangePdf _value, $Res Function(_ChangePdf) _then)
      : super(_value, (v) => _then(v as _ChangePdf));

  @override
  _ChangePdf get _value => super._value as _ChangePdf;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? episodeNumber = freezed,
  }) {
    return _then(_ChangePdf(
      comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeName == freezed
          ? _value.episodeName
          : episodeName // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePdf implements _ChangePdf {
  const _$_ChangePdf(this.comicId, this.episodeName, this.episodeNumber);

  @override
  final String comicId;
  @override
  final String episodeName;
  @override
  final int episodeNumber;

  @override
  String toString() {
    return 'ComicReaderEvent.changePdf(comicId: $comicId, episodeName: $episodeName, episodeNumber: $episodeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePdf &&
            const DeepCollectionEquality().equals(other.comicId, comicId) &&
            const DeepCollectionEquality()
                .equals(other.episodeName, episodeName) &&
            const DeepCollectionEquality()
                .equals(other.episodeNumber, episodeNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(comicId),
      const DeepCollectionEquality().hash(episodeName),
      const DeepCollectionEquality().hash(episodeNumber));

  @JsonKey(ignore: true)
  @override
  _$ChangePdfCopyWith<_ChangePdf> get copyWith =>
      __$ChangePdfCopyWithImpl<_ChangePdf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String comicId, String episodeName, int episodeNumber)
        checkPdf,
    required TResult Function(
            String comicId, String episodeName, int episodeNumber)
        changePdf,
  }) {
    return changePdf(comicId, episodeName, episodeNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        checkPdf,
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        changePdf,
  }) {
    return changePdf?.call(comicId, episodeName, episodeNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        checkPdf,
    TResult Function(String comicId, String episodeName, int episodeNumber)?
        changePdf,
    required TResult orElse(),
  }) {
    if (changePdf != null) {
      return changePdf(comicId, episodeName, episodeNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPdf value) checkPdf,
    required TResult Function(_ChangePdf value) changePdf,
  }) {
    return changePdf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPdf value)? checkPdf,
    TResult Function(_ChangePdf value)? changePdf,
  }) {
    return changePdf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPdf value)? checkPdf,
    TResult Function(_ChangePdf value)? changePdf,
    required TResult orElse(),
  }) {
    if (changePdf != null) {
      return changePdf(this);
    }
    return orElse();
  }
}

abstract class _ChangePdf implements ComicReaderEvent {
  const factory _ChangePdf(
      String comicId, String episodeName, int episodeNumber) = _$_ChangePdf;

  @override
  String get comicId;
  @override
  String get episodeName;
  @override
  int get episodeNumber;
  @override
  @JsonKey(ignore: true)
  _$ChangePdfCopyWith<_ChangePdf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ComicReaderStateTearOff {
  const _$ComicReaderStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Pdfloaded pdfLoaded(Episodes pdf) {
    return _Pdfloaded(
      pdf,
    );
  }

  _DriveLoaded driveLoaded(Episodes pdf) {
    return _DriveLoaded(
      pdf,
    );
  }

  _Error error(ComicFailure failure) {
    return _Error(
      failure,
    );
  }

  _ChgEpisodeSuccess chgEpisodeSuccess(Episodes episodes) {
    return _ChgEpisodeSuccess(
      episodes,
    );
  }
}

/// @nodoc
const $ComicReaderState = _$ComicReaderStateTearOff();

/// @nodoc
mixin _$ComicReaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episodes pdf) pdfLoaded,
    required TResult Function(Episodes pdf) driveLoaded,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(Episodes episodes) chgEpisodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Pdfloaded value) pdfLoaded,
    required TResult Function(_DriveLoaded value) driveLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ChgEpisodeSuccess value) chgEpisodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicReaderStateCopyWith<$Res> {
  factory $ComicReaderStateCopyWith(
          ComicReaderState value, $Res Function(ComicReaderState) then) =
      _$ComicReaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ComicReaderStateCopyWithImpl<$Res>
    implements $ComicReaderStateCopyWith<$Res> {
  _$ComicReaderStateCopyWithImpl(this._value, this._then);

  final ComicReaderState _value;
  // ignore: unused_field
  final $Res Function(ComicReaderState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ComicReaderStateCopyWithImpl<$Res>
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
    return 'ComicReaderState.loading()';
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
    required TResult Function() loading,
    required TResult Function(Episodes pdf) pdfLoaded,
    required TResult Function(Episodes pdf) driveLoaded,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(Episodes episodes) chgEpisodeSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Pdfloaded value) pdfLoaded,
    required TResult Function(_DriveLoaded value) driveLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ChgEpisodeSuccess value) chgEpisodeSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ComicReaderState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$PdfloadedCopyWith<$Res> {
  factory _$PdfloadedCopyWith(
          _Pdfloaded value, $Res Function(_Pdfloaded) then) =
      __$PdfloadedCopyWithImpl<$Res>;
  $Res call({Episodes pdf});

  $EpisodesCopyWith<$Res> get pdf;
}

/// @nodoc
class __$PdfloadedCopyWithImpl<$Res>
    extends _$ComicReaderStateCopyWithImpl<$Res>
    implements _$PdfloadedCopyWith<$Res> {
  __$PdfloadedCopyWithImpl(_Pdfloaded _value, $Res Function(_Pdfloaded) _then)
      : super(_value, (v) => _then(v as _Pdfloaded));

  @override
  _Pdfloaded get _value => super._value as _Pdfloaded;

  @override
  $Res call({
    Object? pdf = freezed,
  }) {
    return _then(_Pdfloaded(
      pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Episodes,
    ));
  }

  @override
  $EpisodesCopyWith<$Res> get pdf {
    return $EpisodesCopyWith<$Res>(_value.pdf, (value) {
      return _then(_value.copyWith(pdf: value));
    });
  }
}

/// @nodoc

class _$_Pdfloaded implements _Pdfloaded {
  const _$_Pdfloaded(this.pdf);

  @override
  final Episodes pdf;

  @override
  String toString() {
    return 'ComicReaderState.pdfLoaded(pdf: $pdf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pdfloaded &&
            const DeepCollectionEquality().equals(other.pdf, pdf));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pdf));

  @JsonKey(ignore: true)
  @override
  _$PdfloadedCopyWith<_Pdfloaded> get copyWith =>
      __$PdfloadedCopyWithImpl<_Pdfloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episodes pdf) pdfLoaded,
    required TResult Function(Episodes pdf) driveLoaded,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(Episodes episodes) chgEpisodeSuccess,
  }) {
    return pdfLoaded(pdf);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
  }) {
    return pdfLoaded?.call(pdf);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (pdfLoaded != null) {
      return pdfLoaded(pdf);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Pdfloaded value) pdfLoaded,
    required TResult Function(_DriveLoaded value) driveLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ChgEpisodeSuccess value) chgEpisodeSuccess,
  }) {
    return pdfLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
  }) {
    return pdfLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (pdfLoaded != null) {
      return pdfLoaded(this);
    }
    return orElse();
  }
}

abstract class _Pdfloaded implements ComicReaderState {
  const factory _Pdfloaded(Episodes pdf) = _$_Pdfloaded;

  Episodes get pdf;
  @JsonKey(ignore: true)
  _$PdfloadedCopyWith<_Pdfloaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DriveLoadedCopyWith<$Res> {
  factory _$DriveLoadedCopyWith(
          _DriveLoaded value, $Res Function(_DriveLoaded) then) =
      __$DriveLoadedCopyWithImpl<$Res>;
  $Res call({Episodes pdf});

  $EpisodesCopyWith<$Res> get pdf;
}

/// @nodoc
class __$DriveLoadedCopyWithImpl<$Res>
    extends _$ComicReaderStateCopyWithImpl<$Res>
    implements _$DriveLoadedCopyWith<$Res> {
  __$DriveLoadedCopyWithImpl(
      _DriveLoaded _value, $Res Function(_DriveLoaded) _then)
      : super(_value, (v) => _then(v as _DriveLoaded));

  @override
  _DriveLoaded get _value => super._value as _DriveLoaded;

  @override
  $Res call({
    Object? pdf = freezed,
  }) {
    return _then(_DriveLoaded(
      pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Episodes,
    ));
  }

  @override
  $EpisodesCopyWith<$Res> get pdf {
    return $EpisodesCopyWith<$Res>(_value.pdf, (value) {
      return _then(_value.copyWith(pdf: value));
    });
  }
}

/// @nodoc

class _$_DriveLoaded implements _DriveLoaded {
  const _$_DriveLoaded(this.pdf);

  @override
  final Episodes pdf;

  @override
  String toString() {
    return 'ComicReaderState.driveLoaded(pdf: $pdf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DriveLoaded &&
            const DeepCollectionEquality().equals(other.pdf, pdf));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pdf));

  @JsonKey(ignore: true)
  @override
  _$DriveLoadedCopyWith<_DriveLoaded> get copyWith =>
      __$DriveLoadedCopyWithImpl<_DriveLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episodes pdf) pdfLoaded,
    required TResult Function(Episodes pdf) driveLoaded,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(Episodes episodes) chgEpisodeSuccess,
  }) {
    return driveLoaded(pdf);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
  }) {
    return driveLoaded?.call(pdf);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (driveLoaded != null) {
      return driveLoaded(pdf);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Pdfloaded value) pdfLoaded,
    required TResult Function(_DriveLoaded value) driveLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ChgEpisodeSuccess value) chgEpisodeSuccess,
  }) {
    return driveLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
  }) {
    return driveLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (driveLoaded != null) {
      return driveLoaded(this);
    }
    return orElse();
  }
}

abstract class _DriveLoaded implements ComicReaderState {
  const factory _DriveLoaded(Episodes pdf) = _$_DriveLoaded;

  Episodes get pdf;
  @JsonKey(ignore: true)
  _$DriveLoadedCopyWith<_DriveLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ComicFailure failure});

  $ComicFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ComicReaderStateCopyWithImpl<$Res>
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
    return 'ComicReaderState.error(failure: $failure)';
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
    required TResult Function() loading,
    required TResult Function(Episodes pdf) pdfLoaded,
    required TResult Function(Episodes pdf) driveLoaded,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(Episodes episodes) chgEpisodeSuccess,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Pdfloaded value) pdfLoaded,
    required TResult Function(_DriveLoaded value) driveLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ChgEpisodeSuccess value) chgEpisodeSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ComicReaderState {
  const factory _Error(ComicFailure failure) = _$_Error;

  ComicFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChgEpisodeSuccessCopyWith<$Res> {
  factory _$ChgEpisodeSuccessCopyWith(
          _ChgEpisodeSuccess value, $Res Function(_ChgEpisodeSuccess) then) =
      __$ChgEpisodeSuccessCopyWithImpl<$Res>;
  $Res call({Episodes episodes});

  $EpisodesCopyWith<$Res> get episodes;
}

/// @nodoc
class __$ChgEpisodeSuccessCopyWithImpl<$Res>
    extends _$ComicReaderStateCopyWithImpl<$Res>
    implements _$ChgEpisodeSuccessCopyWith<$Res> {
  __$ChgEpisodeSuccessCopyWithImpl(
      _ChgEpisodeSuccess _value, $Res Function(_ChgEpisodeSuccess) _then)
      : super(_value, (v) => _then(v as _ChgEpisodeSuccess));

  @override
  _ChgEpisodeSuccess get _value => super._value as _ChgEpisodeSuccess;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_ChgEpisodeSuccess(
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

class _$_ChgEpisodeSuccess implements _ChgEpisodeSuccess {
  const _$_ChgEpisodeSuccess(this.episodes);

  @override
  final Episodes episodes;

  @override
  String toString() {
    return 'ComicReaderState.chgEpisodeSuccess(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChgEpisodeSuccess &&
            const DeepCollectionEquality().equals(other.episodes, episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodes));

  @JsonKey(ignore: true)
  @override
  _$ChgEpisodeSuccessCopyWith<_ChgEpisodeSuccess> get copyWith =>
      __$ChgEpisodeSuccessCopyWithImpl<_ChgEpisodeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Episodes pdf) pdfLoaded,
    required TResult Function(Episodes pdf) driveLoaded,
    required TResult Function(ComicFailure failure) error,
    required TResult Function(Episodes episodes) chgEpisodeSuccess,
  }) {
    return chgEpisodeSuccess(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
  }) {
    return chgEpisodeSuccess?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Episodes pdf)? pdfLoaded,
    TResult Function(Episodes pdf)? driveLoaded,
    TResult Function(ComicFailure failure)? error,
    TResult Function(Episodes episodes)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (chgEpisodeSuccess != null) {
      return chgEpisodeSuccess(episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Pdfloaded value) pdfLoaded,
    required TResult Function(_DriveLoaded value) driveLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ChgEpisodeSuccess value) chgEpisodeSuccess,
  }) {
    return chgEpisodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
  }) {
    return chgEpisodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Pdfloaded value)? pdfLoaded,
    TResult Function(_DriveLoaded value)? driveLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_ChgEpisodeSuccess value)? chgEpisodeSuccess,
    required TResult orElse(),
  }) {
    if (chgEpisodeSuccess != null) {
      return chgEpisodeSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChgEpisodeSuccess implements ComicReaderState {
  const factory _ChgEpisodeSuccess(Episodes episodes) = _$_ChgEpisodeSuccess;

  Episodes get episodes;
  @JsonKey(ignore: true)
  _$ChgEpisodeSuccessCopyWith<_ChgEpisodeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
