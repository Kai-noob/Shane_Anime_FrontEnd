// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upcoming_comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Upcomingcomic _$UpcomingcomicFromJson(Map<String, dynamic> json) {
  return _Upcomingcomic.fromJson(json);
}

/// @nodoc
class _$UpcomingcomicTearOff {
  const _$UpcomingcomicTearOff();

  _Upcomingcomic call(
      {required String title,
      @JsonKey(name: "cover_photo") required String coverPhoto,
      required String review,
      @JsonKey(name: "episode_number") required String episodeNumber,
      @JsonKey(name: "release_date") required String releaseDate}) {
    return _Upcomingcomic(
      title: title,
      coverPhoto: coverPhoto,
      review: review,
      episodeNumber: episodeNumber,
      releaseDate: releaseDate,
    );
  }

  Upcomingcomic fromJson(Map<String, Object?> json) {
    return Upcomingcomic.fromJson(json);
  }
}

/// @nodoc
const $Upcomingcomic = _$UpcomingcomicTearOff();

/// @nodoc
mixin _$Upcomingcomic {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "cover_photo")
  String get coverPhoto => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  @JsonKey(name: "episode_number")
  String get episodeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingcomicCopyWith<Upcomingcomic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingcomicCopyWith<$Res> {
  factory $UpcomingcomicCopyWith(
          Upcomingcomic value, $Res Function(Upcomingcomic) then) =
      _$UpcomingcomicCopyWithImpl<$Res>;
  $Res call(
      {String title,
      @JsonKey(name: "cover_photo") String coverPhoto,
      String review,
      @JsonKey(name: "episode_number") String episodeNumber,
      @JsonKey(name: "release_date") String releaseDate});
}

/// @nodoc
class _$UpcomingcomicCopyWithImpl<$Res>
    implements $UpcomingcomicCopyWith<$Res> {
  _$UpcomingcomicCopyWithImpl(this._value, this._then);

  final Upcomingcomic _value;
  // ignore: unused_field
  final $Res Function(Upcomingcomic) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? review = freezed,
    Object? episodeNumber = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpcomingcomicCopyWith<$Res>
    implements $UpcomingcomicCopyWith<$Res> {
  factory _$UpcomingcomicCopyWith(
          _Upcomingcomic value, $Res Function(_Upcomingcomic) then) =
      __$UpcomingcomicCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      @JsonKey(name: "cover_photo") String coverPhoto,
      String review,
      @JsonKey(name: "episode_number") String episodeNumber,
      @JsonKey(name: "release_date") String releaseDate});
}

/// @nodoc
class __$UpcomingcomicCopyWithImpl<$Res>
    extends _$UpcomingcomicCopyWithImpl<$Res>
    implements _$UpcomingcomicCopyWith<$Res> {
  __$UpcomingcomicCopyWithImpl(
      _Upcomingcomic _value, $Res Function(_Upcomingcomic) _then)
      : super(_value, (v) => _then(v as _Upcomingcomic));

  @override
  _Upcomingcomic get _value => super._value as _Upcomingcomic;

  @override
  $Res call({
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? review = freezed,
    Object? episodeNumber = freezed,
    Object? releaseDate = freezed,
  }) {
    return _then(_Upcomingcomic(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      coverPhoto: coverPhoto == freezed
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      episodeNumber: episodeNumber == freezed
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Upcomingcomic implements _Upcomingcomic {
  const _$_Upcomingcomic(
      {required this.title,
      @JsonKey(name: "cover_photo") required this.coverPhoto,
      required this.review,
      @JsonKey(name: "episode_number") required this.episodeNumber,
      @JsonKey(name: "release_date") required this.releaseDate});

  factory _$_Upcomingcomic.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingcomicFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: "cover_photo")
  final String coverPhoto;
  @override
  final String review;
  @override
  @JsonKey(name: "episode_number")
  final String episodeNumber;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;

  @override
  String toString() {
    return 'Upcomingcomic(title: $title, coverPhoto: $coverPhoto, review: $review, episodeNumber: $episodeNumber, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Upcomingcomic &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.episodeNumber, episodeNumber) ||
                other.episodeNumber == episodeNumber) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, coverPhoto, review, episodeNumber, releaseDate);

  @JsonKey(ignore: true)
  @override
  _$UpcomingcomicCopyWith<_Upcomingcomic> get copyWith =>
      __$UpcomingcomicCopyWithImpl<_Upcomingcomic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcomingcomicToJson(this);
  }
}

abstract class _Upcomingcomic implements Upcomingcomic {
  const factory _Upcomingcomic(
          {required String title,
          @JsonKey(name: "cover_photo") required String coverPhoto,
          required String review,
          @JsonKey(name: "episode_number") required String episodeNumber,
          @JsonKey(name: "release_date") required String releaseDate}) =
      _$_Upcomingcomic;

  factory _Upcomingcomic.fromJson(Map<String, dynamic> json) =
      _$_Upcomingcomic.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: "cover_photo")
  String get coverPhoto;
  @override
  String get review;
  @override
  @JsonKey(name: "episode_number")
  String get episodeNumber;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  @JsonKey(ignore: true)
  _$UpcomingcomicCopyWith<_Upcomingcomic> get copyWith =>
      throw _privateConstructorUsedError;
}
