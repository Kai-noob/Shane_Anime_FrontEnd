// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
class _$ComicTearOff {
  const _$ComicTearOff();

  _Comic call(
      {@JsonKey(ignore: true) String? id,
      required String title,
      @JsonKey(name: "cover_photo") required String coverPhoto,
      required String review,
      @JsonKey(name: "editor_choice") required bool editorChoice,
      required bool published,
      required bool completed,
      @TimestampConverter() required DateTime created}) {
    return _Comic(
      id: id,
      title: title,
      coverPhoto: coverPhoto,
      review: review,
      editorChoice: editorChoice,
      published: published,
      completed: completed,
      created: created,
    );
  }

  Comic fromJson(Map<String, Object?> json) {
    return Comic.fromJson(json);
  }
}

/// @nodoc
const $Comic = _$ComicTearOff();

/// @nodoc
mixin _$Comic {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "cover_photo")
  String get coverPhoto => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  @JsonKey(name: "editor_choice")
  bool get editorChoice => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicCopyWith<Comic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCopyWith<$Res> {
  factory $ComicCopyWith(Comic value, $Res Function(Comic) then) =
      _$ComicCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String title,
      @JsonKey(name: "cover_photo") String coverPhoto,
      String review,
      @JsonKey(name: "editor_choice") bool editorChoice,
      bool published,
      bool completed,
      @TimestampConverter() DateTime created});
}

/// @nodoc
class _$ComicCopyWithImpl<$Res> implements $ComicCopyWith<$Res> {
  _$ComicCopyWithImpl(this._value, this._then);

  final Comic _value;
  // ignore: unused_field
  final $Res Function(Comic) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? review = freezed,
    Object? editorChoice = freezed,
    Object? published = freezed,
    Object? completed = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      editorChoice: editorChoice == freezed
          ? _value.editorChoice
          : editorChoice // ignore: cast_nullable_to_non_nullable
              as bool,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ComicCopyWith<$Res> implements $ComicCopyWith<$Res> {
  factory _$ComicCopyWith(_Comic value, $Res Function(_Comic) then) =
      __$ComicCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String title,
      @JsonKey(name: "cover_photo") String coverPhoto,
      String review,
      @JsonKey(name: "editor_choice") bool editorChoice,
      bool published,
      bool completed,
      @TimestampConverter() DateTime created});
}

/// @nodoc
class __$ComicCopyWithImpl<$Res> extends _$ComicCopyWithImpl<$Res>
    implements _$ComicCopyWith<$Res> {
  __$ComicCopyWithImpl(_Comic _value, $Res Function(_Comic) _then)
      : super(_value, (v) => _then(v as _Comic));

  @override
  _Comic get _value => super._value as _Comic;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? coverPhoto = freezed,
    Object? review = freezed,
    Object? editorChoice = freezed,
    Object? published = freezed,
    Object? completed = freezed,
    Object? created = freezed,
  }) {
    return _then(_Comic(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      editorChoice: editorChoice == freezed
          ? _value.editorChoice
          : editorChoice // ignore: cast_nullable_to_non_nullable
              as bool,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comic implements _Comic {
  const _$_Comic(
      {@JsonKey(ignore: true) this.id,
      required this.title,
      @JsonKey(name: "cover_photo") required this.coverPhoto,
      required this.review,
      @JsonKey(name: "editor_choice") required this.editorChoice,
      required this.published,
      required this.completed,
      @TimestampConverter() required this.created});

  factory _$_Comic.fromJson(Map<String, dynamic> json) =>
      _$$_ComicFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String title;
  @override
  @JsonKey(name: "cover_photo")
  final String coverPhoto;
  @override
  final String review;
  @override
  @JsonKey(name: "editor_choice")
  final bool editorChoice;
  @override
  final bool published;
  @override
  final bool completed;
  @override
  @TimestampConverter()
  final DateTime created;

  @override
  String toString() {
    return 'Comic(id: $id, title: $title, coverPhoto: $coverPhoto, review: $review, editorChoice: $editorChoice, published: $published, completed: $completed, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comic &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.coverPhoto, coverPhoto) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality()
                .equals(other.editorChoice, editorChoice) &&
            const DeepCollectionEquality().equals(other.published, published) &&
            const DeepCollectionEquality().equals(other.completed, completed) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(coverPhoto),
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(editorChoice),
      const DeepCollectionEquality().hash(published),
      const DeepCollectionEquality().hash(completed),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$ComicCopyWith<_Comic> get copyWith =>
      __$ComicCopyWithImpl<_Comic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicToJson(this);
  }
}

abstract class _Comic implements Comic {
  const factory _Comic(
      {@JsonKey(ignore: true) String? id,
      required String title,
      @JsonKey(name: "cover_photo") required String coverPhoto,
      required String review,
      @JsonKey(name: "editor_choice") required bool editorChoice,
      required bool published,
      required bool completed,
      @TimestampConverter() required DateTime created}) = _$_Comic;

  factory _Comic.fromJson(Map<String, dynamic> json) = _$_Comic.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get title;
  @override
  @JsonKey(name: "cover_photo")
  String get coverPhoto;
  @override
  String get review;
  @override
  @JsonKey(name: "editor_choice")
  bool get editorChoice;
  @override
  bool get published;
  @override
  bool get completed;
  @override
  @TimestampConverter()
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$ComicCopyWith<_Comic> get copyWith => throw _privateConstructorUsedError;
}
