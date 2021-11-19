// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episodes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Episodes _$EpisodesFromJson(Map<String, dynamic> json) {
  return _Episodes.fromJson(json);
}

/// @nodoc
class _$EpisodesTearOff {
  const _$EpisodesTearOff();

  _Episodes call(
      {@JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "episode_name") required String episodeName,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      @JsonKey(name: "episode_number") required int episodeNumber}) {
    return _Episodes(
      comicId: comicId,
      episodeName: episodeName,
      title: title,
      coverPhoto: coverPhoto,
      episodeNumber: episodeNumber,
    );
  }

  Episodes fromJson(Map<String, Object?> json) {
    return Episodes.fromJson(json);
  }
}

/// @nodoc
const $Episodes = _$EpisodesTearOff();

/// @nodoc
mixin _$Episodes {
  @JsonKey(name: "comic_id")
  String get comicId => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_name")
  String get episodeName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_number")
  int get episodeNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesCopyWith<Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesCopyWith<$Res> {
  factory $EpisodesCopyWith(Episodes value, $Res Function(Episodes) then) =
      _$EpisodesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "comic_id") String comicId,
      @JsonKey(name: "episode_name") String episodeName,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      @JsonKey(name: "episode_number") int episodeNumber});
}

/// @nodoc
class _$EpisodesCopyWithImpl<$Res> implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._value, this._then);

  final Episodes _value;
  // ignore: unused_field
  final $Res Function(Episodes) _then;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? title = freezed,
    Object? coverPhoto = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EpisodesCopyWith<$Res> implements $EpisodesCopyWith<$Res> {
  factory _$EpisodesCopyWith(_Episodes value, $Res Function(_Episodes) then) =
      __$EpisodesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "comic_id") String comicId,
      @JsonKey(name: "episode_name") String episodeName,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      @JsonKey(name: "episode_number") int episodeNumber});
}

/// @nodoc
class __$EpisodesCopyWithImpl<$Res> extends _$EpisodesCopyWithImpl<$Res>
    implements _$EpisodesCopyWith<$Res> {
  __$EpisodesCopyWithImpl(_Episodes _value, $Res Function(_Episodes) _then)
      : super(_value, (v) => _then(v as _Episodes));

  @override
  _Episodes get _value => super._value as _Episodes;

  @override
  $Res call({
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? episodeNumber = freezed,
  }) {
    return _then(_Episodes(
      comicId: comicId == freezed
          ? _value.comicId
          : comicId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeName: episodeName == freezed
          ? _value.episodeName
          : episodeName // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episodes implements _Episodes {
  const _$_Episodes(
      {@JsonKey(name: "comic_id") required this.comicId,
      @JsonKey(name: "episode_name") required this.episodeName,
      @JsonKey(ignore: true) this.title,
      @JsonKey(ignore: true) this.coverPhoto,
      @JsonKey(name: "episode_number") required this.episodeNumber});

  factory _$_Episodes.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesFromJson(json);

  @override
  @JsonKey(name: "comic_id")
  final String comicId;
  @override
  @JsonKey(name: "episode_name")
  final String episodeName;
  @override
  @JsonKey(ignore: true)
  final String? title;
  @override
  @JsonKey(ignore: true)
  final String? coverPhoto;
  @override
  @JsonKey(name: "episode_number")
  final int episodeNumber;

  @override
  String toString() {
    return 'Episodes(comicId: $comicId, episodeName: $episodeName, title: $title, coverPhoto: $coverPhoto, episodeNumber: $episodeNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Episodes &&
            (identical(other.comicId, comicId) || other.comicId == comicId) &&
            (identical(other.episodeName, episodeName) ||
                other.episodeName == episodeName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.episodeNumber, episodeNumber) ||
                other.episodeNumber == episodeNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, comicId, episodeName, title, coverPhoto, episodeNumber);

  @JsonKey(ignore: true)
  @override
  _$EpisodesCopyWith<_Episodes> get copyWith =>
      __$EpisodesCopyWithImpl<_Episodes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodesToJson(this);
  }
}

abstract class _Episodes implements Episodes {
  const factory _Episodes(
          {@JsonKey(name: "comic_id") required String comicId,
          @JsonKey(name: "episode_name") required String episodeName,
          @JsonKey(ignore: true) String? title,
          @JsonKey(ignore: true) String? coverPhoto,
          @JsonKey(name: "episode_number") required int episodeNumber}) =
      _$_Episodes;

  factory _Episodes.fromJson(Map<String, dynamic> json) = _$_Episodes.fromJson;

  @override
  @JsonKey(name: "comic_id")
  String get comicId;
  @override
  @JsonKey(name: "episode_name")
  String get episodeName;
  @override
  @JsonKey(ignore: true)
  String? get title;
  @override
  @JsonKey(ignore: true)
  String? get coverPhoto;
  @override
  @JsonKey(name: "episode_number")
  int get episodeNumber;
  @override
  @JsonKey(ignore: true)
  _$EpisodesCopyWith<_Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}
