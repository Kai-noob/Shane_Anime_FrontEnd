// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return _Comments.fromJson(json);
}

/// @nodoc
class _$CommentsTearOff {
  const _$CommentsTearOff();

  _Comments call(
      {@JsonKey(ignore: true) String? commentId,
      required String comment,
      @TimestampConverter() required DateTime timestamp,
      required String episodeId,
      required String userId,
      @JsonKey(ignore: true) AppUser? user}) {
    return _Comments(
      commentId: commentId,
      comment: comment,
      timestamp: timestamp,
      episodeId: episodeId,
      userId: userId,
      user: user,
    );
  }

  Comments fromJson(Map<String, Object?> json) {
    return Comments.fromJson(json);
  }
}

/// @nodoc
const $Comments = _$CommentsTearOff();

/// @nodoc
mixin _$Comments {
  @JsonKey(ignore: true)
  String? get commentId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get episodeId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  AppUser? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsCopyWith<Comments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsCopyWith<$Res> {
  factory $CommentsCopyWith(Comments value, $Res Function(Comments) then) =
      _$CommentsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? commentId,
      String comment,
      @TimestampConverter() DateTime timestamp,
      String episodeId,
      String userId,
      @JsonKey(ignore: true) AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CommentsCopyWithImpl<$Res> implements $CommentsCopyWith<$Res> {
  _$CommentsCopyWithImpl(this._value, this._then);

  final Comments _value;
  // ignore: unused_field
  final $Res Function(Comments) _then;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? comment = freezed,
    Object? timestamp = freezed,
    Object? episodeId = freezed,
    Object? userId = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      episodeId: episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$CommentsCopyWith<$Res> implements $CommentsCopyWith<$Res> {
  factory _$CommentsCopyWith(_Comments value, $Res Function(_Comments) then) =
      __$CommentsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? commentId,
      String comment,
      @TimestampConverter() DateTime timestamp,
      String episodeId,
      String userId,
      @JsonKey(ignore: true) AppUser? user});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$CommentsCopyWithImpl<$Res> extends _$CommentsCopyWithImpl<$Res>
    implements _$CommentsCopyWith<$Res> {
  __$CommentsCopyWithImpl(_Comments _value, $Res Function(_Comments) _then)
      : super(_value, (v) => _then(v as _Comments));

  @override
  _Comments get _value => super._value as _Comments;

  @override
  $Res call({
    Object? commentId = freezed,
    Object? comment = freezed,
    Object? timestamp = freezed,
    Object? episodeId = freezed,
    Object? userId = freezed,
    Object? user = freezed,
  }) {
    return _then(_Comments(
      commentId: commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      episodeId: episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comments implements _Comments {
  const _$_Comments(
      {@JsonKey(ignore: true) this.commentId,
      required this.comment,
      @TimestampConverter() required this.timestamp,
      required this.episodeId,
      required this.userId,
      @JsonKey(ignore: true) this.user});

  factory _$_Comments.fromJson(Map<String, dynamic> json) =>
      _$$_CommentsFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? commentId;
  @override
  final String comment;
  @override
  @TimestampConverter()
  final DateTime timestamp;
  @override
  final String episodeId;
  @override
  final String userId;
  @override
  @JsonKey(ignore: true)
  final AppUser? user;

  @override
  String toString() {
    return 'Comments(commentId: $commentId, comment: $comment, timestamp: $timestamp, episodeId: $episodeId, userId: $userId, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comments &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, commentId, comment, timestamp, episodeId, userId, user);

  @JsonKey(ignore: true)
  @override
  _$CommentsCopyWith<_Comments> get copyWith =>
      __$CommentsCopyWithImpl<_Comments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentsToJson(this);
  }
}

abstract class _Comments implements Comments {
  const factory _Comments(
      {@JsonKey(ignore: true) String? commentId,
      required String comment,
      @TimestampConverter() required DateTime timestamp,
      required String episodeId,
      required String userId,
      @JsonKey(ignore: true) AppUser? user}) = _$_Comments;

  factory _Comments.fromJson(Map<String, dynamic> json) = _$_Comments.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get commentId;
  @override
  String get comment;
  @override
  @TimestampConverter()
  DateTime get timestamp;
  @override
  String get episodeId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  AppUser? get user;
  @override
  @JsonKey(ignore: true)
  _$CommentsCopyWith<_Comments> get copyWith =>
      throw _privateConstructorUsedError;
}
