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
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "episode_name") required String episodeName,
      @JsonKey(name: "episode_number") required int episodeNumber,
      @JsonKey(name: "pdf_file") required String? pdfFile,
      @JsonKey(name: "drive_link") required String? driveLink,
      @JsonKey(ignore: true) int? episodeCount,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      required Map<String, bool> like}) {
    return _Episodes(
      id: id,
      comicId: comicId,
      episodeName: episodeName,
      episodeNumber: episodeNumber,
      pdfFile: pdfFile,
      driveLink: driveLink,
      episodeCount: episodeCount,
      title: title,
      coverPhoto: coverPhoto,
      like: like,
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
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "comic_id")
  String get comicId => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_name")
  String get episodeName => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_number")
  int get episodeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "pdf_file")
  String? get pdfFile => throw _privateConstructorUsedError;
  @JsonKey(name: "drive_link")
  String? get driveLink => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  int? get episodeCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get coverPhoto => throw _privateConstructorUsedError;
  Map<String, bool> get like => throw _privateConstructorUsedError;

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
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "comic_id") String comicId,
      @JsonKey(name: "episode_name") String episodeName,
      @JsonKey(name: "episode_number") int episodeNumber,
      @JsonKey(name: "pdf_file") String? pdfFile,
      @JsonKey(name: "drive_link") String? driveLink,
      @JsonKey(ignore: true) int? episodeCount,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      Map<String, bool> like});
}

/// @nodoc
class _$EpisodesCopyWithImpl<$Res> implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._value, this._then);

  final Episodes _value;
  // ignore: unused_field
  final $Res Function(Episodes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? episodeNumber = freezed,
    Object? pdfFile = freezed,
    Object? driveLink = freezed,
    Object? episodeCount = freezed,
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? like = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      pdfFile: pdfFile == freezed
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as String?,
      driveLink: driveLink == freezed
          ? _value.driveLink
          : driveLink // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeCount: episodeCount == freezed
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
abstract class _$EpisodesCopyWith<$Res> implements $EpisodesCopyWith<$Res> {
  factory _$EpisodesCopyWith(_Episodes value, $Res Function(_Episodes) then) =
      __$EpisodesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "comic_id") String comicId,
      @JsonKey(name: "episode_name") String episodeName,
      @JsonKey(name: "episode_number") int episodeNumber,
      @JsonKey(name: "pdf_file") String? pdfFile,
      @JsonKey(name: "drive_link") String? driveLink,
      @JsonKey(ignore: true) int? episodeCount,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      Map<String, bool> like});
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
    Object? id = freezed,
    Object? comicId = freezed,
    Object? episodeName = freezed,
    Object? episodeNumber = freezed,
    Object? pdfFile = freezed,
    Object? driveLink = freezed,
    Object? episodeCount = freezed,
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? like = freezed,
  }) {
    return _then(_Episodes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      pdfFile: pdfFile == freezed
          ? _value.pdfFile
          : pdfFile // ignore: cast_nullable_to_non_nullable
              as String?,
      driveLink: driveLink == freezed
          ? _value.driveLink
          : driveLink // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeCount: episodeCount == freezed
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Episodes implements _Episodes {
  const _$_Episodes(
      {@JsonKey(ignore: true) this.id,
      @JsonKey(name: "comic_id") required this.comicId,
      @JsonKey(name: "episode_name") required this.episodeName,
      @JsonKey(name: "episode_number") required this.episodeNumber,
      @JsonKey(name: "pdf_file") required this.pdfFile,
      @JsonKey(name: "drive_link") required this.driveLink,
      @JsonKey(ignore: true) this.episodeCount,
      @JsonKey(ignore: true) this.title,
      @JsonKey(ignore: true) this.coverPhoto,
      required this.like});

  factory _$_Episodes.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodesFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  @JsonKey(name: "comic_id")
  final String comicId;
  @override
  @JsonKey(name: "episode_name")
  final String episodeName;
  @override
  @JsonKey(name: "episode_number")
  final int episodeNumber;
  @override
  @JsonKey(name: "pdf_file")
  final String? pdfFile;
  @override
  @JsonKey(name: "drive_link")
  final String? driveLink;
  @override
  @JsonKey(ignore: true)
  final int? episodeCount;
  @override
  @JsonKey(ignore: true)
  final String? title;
  @override
  @JsonKey(ignore: true)
  final String? coverPhoto;
  @override
  final Map<String, bool> like;

  @override
  String toString() {
    return 'Episodes(id: $id, comicId: $comicId, episodeName: $episodeName, episodeNumber: $episodeNumber, pdfFile: $pdfFile, driveLink: $driveLink, episodeCount: $episodeCount, title: $title, coverPhoto: $coverPhoto, like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Episodes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.comicId, comicId) &&
            const DeepCollectionEquality()
                .equals(other.episodeName, episodeName) &&
            const DeepCollectionEquality()
                .equals(other.episodeNumber, episodeNumber) &&
            const DeepCollectionEquality().equals(other.pdfFile, pdfFile) &&
            const DeepCollectionEquality().equals(other.driveLink, driveLink) &&
            const DeepCollectionEquality()
                .equals(other.episodeCount, episodeCount) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.coverPhoto, coverPhoto) &&
            const DeepCollectionEquality().equals(other.like, like));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(comicId),
      const DeepCollectionEquality().hash(episodeName),
      const DeepCollectionEquality().hash(episodeNumber),
      const DeepCollectionEquality().hash(pdfFile),
      const DeepCollectionEquality().hash(driveLink),
      const DeepCollectionEquality().hash(episodeCount),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(coverPhoto),
      const DeepCollectionEquality().hash(like));

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
      {@JsonKey(ignore: true) String? id,
      @JsonKey(name: "comic_id") required String comicId,
      @JsonKey(name: "episode_name") required String episodeName,
      @JsonKey(name: "episode_number") required int episodeNumber,
      @JsonKey(name: "pdf_file") required String? pdfFile,
      @JsonKey(name: "drive_link") required String? driveLink,
      @JsonKey(ignore: true) int? episodeCount,
      @JsonKey(ignore: true) String? title,
      @JsonKey(ignore: true) String? coverPhoto,
      required Map<String, bool> like}) = _$_Episodes;

  factory _Episodes.fromJson(Map<String, dynamic> json) = _$_Episodes.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  @JsonKey(name: "comic_id")
  String get comicId;
  @override
  @JsonKey(name: "episode_name")
  String get episodeName;
  @override
  @JsonKey(name: "episode_number")
  int get episodeNumber;
  @override
  @JsonKey(name: "pdf_file")
  String? get pdfFile;
  @override
  @JsonKey(name: "drive_link")
  String? get driveLink;
  @override
  @JsonKey(ignore: true)
  int? get episodeCount;
  @override
  @JsonKey(ignore: true)
  String? get title;
  @override
  @JsonKey(ignore: true)
  String? get coverPhoto;
  @override
  Map<String, bool> get like;
  @override
  @JsonKey(ignore: true)
  _$EpisodesCopyWith<_Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}
