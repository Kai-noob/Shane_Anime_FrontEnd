// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicGenre _$ComicGenreFromJson(Map<String, dynamic> json) {
  return _ComicGenre.fromJson(json);
}

/// @nodoc
class _$ComicGenreTearOff {
  const _$ComicGenreTearOff();

  _ComicGenre call(
      {@JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "genre_id") required String genreId}) {
    return _ComicGenre(
      comicId: comicId,
      genreId: genreId,
    );
  }

  ComicGenre fromJson(Map<String, Object?> json) {
    return ComicGenre.fromJson(json);
  }
}

/// @nodoc
const $ComicGenre = _$ComicGenreTearOff();

/// @nodoc
mixin _$ComicGenre {
// ignore: invalid_annotation_target
  @JsonKey(name: "comic_id")
  String get comicId =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "genre_id")
  String get genreId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicGenreCopyWith<ComicGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicGenreCopyWith<$Res> {
  factory $ComicGenreCopyWith(
          ComicGenre value, $Res Function(ComicGenre) then) =
      _$ComicGenreCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "comic_id") String comicId,
      @JsonKey(name: "genre_id") String genreId});
}

/// @nodoc
class _$ComicGenreCopyWithImpl<$Res> implements $ComicGenreCopyWith<$Res> {
  _$ComicGenreCopyWithImpl(this._value, this._then);

  final ComicGenre _value;
  // ignore: unused_field
  final $Res Function(ComicGenre) _then;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? genreId = freezed,
  }) {
    return _then(_value.copyWith(
      comicId: comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
      genreId: genreId == freezed
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ComicGenreCopyWith<$Res> implements $ComicGenreCopyWith<$Res> {
  factory _$ComicGenreCopyWith(
          _ComicGenre value, $Res Function(_ComicGenre) then) =
      __$ComicGenreCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "comic_id") String comicId,
      @JsonKey(name: "genre_id") String genreId});
}

/// @nodoc
class __$ComicGenreCopyWithImpl<$Res> extends _$ComicGenreCopyWithImpl<$Res>
    implements _$ComicGenreCopyWith<$Res> {
  __$ComicGenreCopyWithImpl(
      _ComicGenre _value, $Res Function(_ComicGenre) _then)
      : super(_value, (v) => _then(v as _ComicGenre));

  @override
  _ComicGenre get _value => super._value as _ComicGenre;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? genreId = freezed,
  }) {
    return _then(_ComicGenre(
      comicId: comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
      genreId: genreId == freezed
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComicGenre implements _ComicGenre {
  const _$_ComicGenre(
      {@JsonKey(name: "comic_id") required this.comicId,
      @JsonKey(name: "genre_id") required this.genreId});

  factory _$_ComicGenre.fromJson(Map<String, dynamic> json) =>
      _$$_ComicGenreFromJson(json);

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "comic_id")
  final String comicId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "genre_id")
  final String genreId;

  @override
  String toString() {
    return 'ComicGenre(comicId: $comicId, genreId: $genreId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComicGenre &&
            (identical(other.comicId, comicId) || other.comicId == comicId) &&
            (identical(other.genreId, genreId) || other.genreId == genreId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comicId, genreId);

  @JsonKey(ignore: true)
  @override
  _$ComicGenreCopyWith<_ComicGenre> get copyWith =>
      __$ComicGenreCopyWithImpl<_ComicGenre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicGenreToJson(this);
  }
}

abstract class _ComicGenre implements ComicGenre {
  const factory _ComicGenre(
      {@JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "genre_id") required String genreId}) = _$_ComicGenre;

  factory _ComicGenre.fromJson(Map<String, dynamic> json) =
      _$_ComicGenre.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "comic_id")
  String get comicId;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "genre_id")
  String get genreId;
  @override
  @JsonKey(ignore: true)
  _$ComicGenreCopyWith<_ComicGenre> get copyWith =>
      throw _privateConstructorUsedError;
}
