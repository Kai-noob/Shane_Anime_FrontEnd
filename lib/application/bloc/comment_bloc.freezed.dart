// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentEventTearOff {
  const _$CommentEventTearOff();

  _CommentsReceived commentsReceived(
      Either<UserActionsFailure, List<Comments>> failureOrComments) {
    return _CommentsReceived(
      failureOrComments,
    );
  }

  _FetchComment fetchComment(String episodeId) {
    return _FetchComment(
      episodeId,
    );
  }

  _FetchComments fetchComments(String episodeId) {
    return _FetchComments(
      episodeId,
    );
  }

  _AddComment addComment(String userId, String comment, String episodeId) {
    return _AddComment(
      userId,
      comment,
      episodeId,
    );
  }
}

/// @nodoc
const $CommentEvent = _$CommentEventTearOff();

/// @nodoc
mixin _$CommentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(String episodeId) fetchComment,
    required TResult Function(String episodeId) fetchComments,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_FetchComment value) fetchComment,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_AddComment value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEventCopyWith<$Res> {
  factory $CommentEventCopyWith(
          CommentEvent value, $Res Function(CommentEvent) then) =
      _$CommentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentEventCopyWithImpl<$Res> implements $CommentEventCopyWith<$Res> {
  _$CommentEventCopyWithImpl(this._value, this._then);

  final CommentEvent _value;
  // ignore: unused_field
  final $Res Function(CommentEvent) _then;
}

/// @nodoc
abstract class _$CommentsReceivedCopyWith<$Res> {
  factory _$CommentsReceivedCopyWith(
          _CommentsReceived value, $Res Function(_CommentsReceived) then) =
      __$CommentsReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserActionsFailure, List<Comments>> failureOrComments});
}

/// @nodoc
class __$CommentsReceivedCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
    implements _$CommentsReceivedCopyWith<$Res> {
  __$CommentsReceivedCopyWithImpl(
      _CommentsReceived _value, $Res Function(_CommentsReceived) _then)
      : super(_value, (v) => _then(v as _CommentsReceived));

  @override
  _CommentsReceived get _value => super._value as _CommentsReceived;

  @override
  $Res call({
    Object? failureOrComments = freezed,
  }) {
    return _then(_CommentsReceived(
      failureOrComments == freezed
          ? _value.failureOrComments
          : failureOrComments // ignore: cast_nullable_to_non_nullable
              as Either<UserActionsFailure, List<Comments>>,
    ));
  }
}

/// @nodoc

class _$_CommentsReceived implements _CommentsReceived {
  const _$_CommentsReceived(this.failureOrComments);

  @override
  final Either<UserActionsFailure, List<Comments>> failureOrComments;

  @override
  String toString() {
    return 'CommentEvent.commentsReceived(failureOrComments: $failureOrComments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentsReceived &&
            (identical(other.failureOrComments, failureOrComments) ||
                other.failureOrComments == failureOrComments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrComments);

  @JsonKey(ignore: true)
  @override
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      __$CommentsReceivedCopyWithImpl<_CommentsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(String episodeId) fetchComment,
    required TResult Function(String episodeId) fetchComments,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return commentsReceived(failureOrComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return commentsReceived?.call(failureOrComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(failureOrComments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_FetchComment value) fetchComment,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return commentsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return commentsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(this);
    }
    return orElse();
  }
}

abstract class _CommentsReceived implements CommentEvent {
  const factory _CommentsReceived(
          Either<UserActionsFailure, List<Comments>> failureOrComments) =
      _$_CommentsReceived;

  Either<UserActionsFailure, List<Comments>> get failureOrComments;
  @JsonKey(ignore: true)
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchCommentCopyWith<$Res> {
  factory _$FetchCommentCopyWith(
          _FetchComment value, $Res Function(_FetchComment) then) =
      __$FetchCommentCopyWithImpl<$Res>;
  $Res call({String episodeId});
}

/// @nodoc
class __$FetchCommentCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements _$FetchCommentCopyWith<$Res> {
  __$FetchCommentCopyWithImpl(
      _FetchComment _value, $Res Function(_FetchComment) _then)
      : super(_value, (v) => _then(v as _FetchComment));

  @override
  _FetchComment get _value => super._value as _FetchComment;

  @override
  $Res call({
    Object? episodeId = freezed,
  }) {
    return _then(_FetchComment(
      episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchComment implements _FetchComment {
  const _$_FetchComment(this.episodeId);

  @override
  final String episodeId;

  @override
  String toString() {
    return 'CommentEvent.fetchComment(episodeId: $episodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchComment &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episodeId);

  @JsonKey(ignore: true)
  @override
  _$FetchCommentCopyWith<_FetchComment> get copyWith =>
      __$FetchCommentCopyWithImpl<_FetchComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(String episodeId) fetchComment,
    required TResult Function(String episodeId) fetchComments,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return fetchComment(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return fetchComment?.call(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (fetchComment != null) {
      return fetchComment(episodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_FetchComment value) fetchComment,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return fetchComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return fetchComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (fetchComment != null) {
      return fetchComment(this);
    }
    return orElse();
  }
}

abstract class _FetchComment implements CommentEvent {
  const factory _FetchComment(String episodeId) = _$_FetchComment;

  String get episodeId;
  @JsonKey(ignore: true)
  _$FetchCommentCopyWith<_FetchComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchCommentsCopyWith<$Res> {
  factory _$FetchCommentsCopyWith(
          _FetchComments value, $Res Function(_FetchComments) then) =
      __$FetchCommentsCopyWithImpl<$Res>;
  $Res call({String episodeId});
}

/// @nodoc
class __$FetchCommentsCopyWithImpl<$Res>
    extends _$CommentEventCopyWithImpl<$Res>
    implements _$FetchCommentsCopyWith<$Res> {
  __$FetchCommentsCopyWithImpl(
      _FetchComments _value, $Res Function(_FetchComments) _then)
      : super(_value, (v) => _then(v as _FetchComments));

  @override
  _FetchComments get _value => super._value as _FetchComments;

  @override
  $Res call({
    Object? episodeId = freezed,
  }) {
    return _then(_FetchComments(
      episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchComments implements _FetchComments {
  const _$_FetchComments(this.episodeId);

  @override
  final String episodeId;

  @override
  String toString() {
    return 'CommentEvent.fetchComments(episodeId: $episodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchComments &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episodeId);

  @JsonKey(ignore: true)
  @override
  _$FetchCommentsCopyWith<_FetchComments> get copyWith =>
      __$FetchCommentsCopyWithImpl<_FetchComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(String episodeId) fetchComment,
    required TResult Function(String episodeId) fetchComments,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return fetchComments(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return fetchComments?.call(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(episodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_FetchComment value) fetchComment,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return fetchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return fetchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(this);
    }
    return orElse();
  }
}

abstract class _FetchComments implements CommentEvent {
  const factory _FetchComments(String episodeId) = _$_FetchComments;

  String get episodeId;
  @JsonKey(ignore: true)
  _$FetchCommentsCopyWith<_FetchComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddCommentCopyWith<$Res> {
  factory _$AddCommentCopyWith(
          _AddComment value, $Res Function(_AddComment) then) =
      __$AddCommentCopyWithImpl<$Res>;
  $Res call({String userId, String comment, String episodeId});
}

/// @nodoc
class __$AddCommentCopyWithImpl<$Res> extends _$CommentEventCopyWithImpl<$Res>
    implements _$AddCommentCopyWith<$Res> {
  __$AddCommentCopyWithImpl(
      _AddComment _value, $Res Function(_AddComment) _then)
      : super(_value, (v) => _then(v as _AddComment));

  @override
  _AddComment get _value => super._value as _AddComment;

  @override
  $Res call({
    Object? userId = freezed,
    Object? comment = freezed,
    Object? episodeId = freezed,
  }) {
    return _then(_AddComment(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddComment implements _AddComment {
  const _$_AddComment(this.userId, this.comment, this.episodeId);

  @override
  final String userId;
  @override
  final String comment;
  @override
  final String episodeId;

  @override
  String toString() {
    return 'CommentEvent.addComment(userId: $userId, comment: $comment, episodeId: $episodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddComment &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, comment, episodeId);

  @JsonKey(ignore: true)
  @override
  _$AddCommentCopyWith<_AddComment> get copyWith =>
      __$AddCommentCopyWithImpl<_AddComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(String episodeId) fetchComment,
    required TResult Function(String episodeId) fetchComments,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return addComment(userId, comment, episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return addComment?.call(userId, comment, episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(String episodeId)? fetchComment,
    TResult Function(String episodeId)? fetchComments,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(userId, comment, episodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_FetchComment value) fetchComment,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_AddComment value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_FetchComment value)? fetchComment,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class _AddComment implements CommentEvent {
  const factory _AddComment(String userId, String comment, String episodeId) =
      _$_AddComment;

  String get userId;
  String get comment;
  String get episodeId;
  @JsonKey(ignore: true)
  _$AddCommentCopyWith<_AddComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentStateTearOff {
  const _$CommentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _AddSuccess addSuccess() {
    return const _AddSuccess();
  }

  _CommentsLoaded commentsLoaded(List<Comments> comments) {
    return _CommentsLoaded(
      comments,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $CommentState = _$CommentStateTearOff();

/// @nodoc
mixin _$CommentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) commentsLoaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_CommentsLoaded value) commentsLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentStateCopyWith<$Res> {
  factory $CommentStateCopyWith(
          CommentState value, $Res Function(CommentState) then) =
      _$CommentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentStateCopyWithImpl<$Res> implements $CommentStateCopyWith<$Res> {
  _$CommentStateCopyWithImpl(this._value, this._then);

  final CommentState _value;
  // ignore: unused_field
  final $Res Function(CommentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
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
    return 'CommentState.initial()';
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
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) commentsLoaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_CommentsLoaded value) commentsLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AddSuccessCopyWith<$Res> {
  factory _$AddSuccessCopyWith(
          _AddSuccess value, $Res Function(_AddSuccess) then) =
      __$AddSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddSuccessCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
    implements _$AddSuccessCopyWith<$Res> {
  __$AddSuccessCopyWithImpl(
      _AddSuccess _value, $Res Function(_AddSuccess) _then)
      : super(_value, (v) => _then(v as _AddSuccess));

  @override
  _AddSuccess get _value => super._value as _AddSuccess;
}

/// @nodoc

class _$_AddSuccess implements _AddSuccess {
  const _$_AddSuccess();

  @override
  String toString() {
    return 'CommentState.addSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) commentsLoaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_CommentsLoaded value) commentsLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements CommentState {
  const factory _AddSuccess() = _$_AddSuccess;
}

/// @nodoc
abstract class _$CommentsLoadedCopyWith<$Res> {
  factory _$CommentsLoadedCopyWith(
          _CommentsLoaded value, $Res Function(_CommentsLoaded) then) =
      __$CommentsLoadedCopyWithImpl<$Res>;
  $Res call({List<Comments> comments});
}

/// @nodoc
class __$CommentsLoadedCopyWithImpl<$Res>
    extends _$CommentStateCopyWithImpl<$Res>
    implements _$CommentsLoadedCopyWith<$Res> {
  __$CommentsLoadedCopyWithImpl(
      _CommentsLoaded _value, $Res Function(_CommentsLoaded) _then)
      : super(_value, (v) => _then(v as _CommentsLoaded));

  @override
  _CommentsLoaded get _value => super._value as _CommentsLoaded;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_CommentsLoaded(
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
    ));
  }
}

/// @nodoc

class _$_CommentsLoaded implements _CommentsLoaded {
  const _$_CommentsLoaded(this.comments);

  @override
  final List<Comments> comments;

  @override
  String toString() {
    return 'CommentState.commentsLoaded(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentsLoaded &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$CommentsLoadedCopyWith<_CommentsLoaded> get copyWith =>
      __$CommentsLoadedCopyWithImpl<_CommentsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) commentsLoaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return commentsLoaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return commentsLoaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (commentsLoaded != null) {
      return commentsLoaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_CommentsLoaded value) commentsLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return commentsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return commentsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (commentsLoaded != null) {
      return commentsLoaded(this);
    }
    return orElse();
  }
}

abstract class _CommentsLoaded implements CommentState {
  const factory _CommentsLoaded(List<Comments> comments) = _$_CommentsLoaded;

  List<Comments> get comments;
  @JsonKey(ignore: true)
  _$CommentsLoadedCopyWith<_CommentsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
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
    return 'CommentState.loading()';
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
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) commentsLoaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_CommentsLoaded value) commentsLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CommentState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CommentStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CommentState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) commentsLoaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? commentsLoaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_CommentsLoaded value) commentsLoaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_CommentsLoaded value)? commentsLoaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CommentState {
  const factory _Error() = _$_Error;
}
