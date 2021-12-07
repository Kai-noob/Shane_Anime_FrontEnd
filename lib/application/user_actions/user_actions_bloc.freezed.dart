// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_actions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserActionsEventTearOff {
  const _$UserActionsEventTearOff();

  _FetchProfile fetchProfile() {
    return const _FetchProfile();
  }

  _LikeEpisodes likeEpisodes(bool likeStatus, Episodes episodes) {
    return _LikeEpisodes(
      likeStatus,
      episodes,
    );
  }

  _CheckLikeStatus checkLikeStatus(Episodes episodes) {
    return _CheckLikeStatus(
      episodes,
    );
  }

  _FetchUserComments fetchUserComments(String userId) {
    return _FetchUserComments(
      userId,
    );
  }

  _CommentsReceived commentsReceived(
      Either<UserActionsFailure, List<Comments>> failureOrComments) {
    return _CommentsReceived(
      failureOrComments,
    );
  }

  _ProfileReceived profileReceived(
      Either<UserActionsFailure, AppUser> failureOrProfile) {
    return _ProfileReceived(
      failureOrProfile,
    );
  }

  _EditName editName(String name) {
    return _EditName(
      name,
    );
  }

  _EditImage editImage(String image) {
    return _EditImage(
      image,
    );
  }

  _DeleteComment deleteComment(String commentId) {
    return _DeleteComment(
      commentId,
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
const $UserActionsEvent = _$UserActionsEventTearOff();

/// @nodoc
mixin _$UserActionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionsEventCopyWith<$Res> {
  factory $UserActionsEventCopyWith(
          UserActionsEvent value, $Res Function(UserActionsEvent) then) =
      _$UserActionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserActionsEventCopyWithImpl<$Res>
    implements $UserActionsEventCopyWith<$Res> {
  _$UserActionsEventCopyWithImpl(this._value, this._then);

  final UserActionsEvent _value;
  // ignore: unused_field
  final $Res Function(UserActionsEvent) _then;
}

/// @nodoc
abstract class _$FetchProfileCopyWith<$Res> {
  factory _$FetchProfileCopyWith(
          _FetchProfile value, $Res Function(_FetchProfile) then) =
      __$FetchProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchProfileCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$FetchProfileCopyWith<$Res> {
  __$FetchProfileCopyWithImpl(
      _FetchProfile _value, $Res Function(_FetchProfile) _then)
      : super(_value, (v) => _then(v as _FetchProfile));

  @override
  _FetchProfile get _value => super._value as _FetchProfile;
}

/// @nodoc

class _$_FetchProfile implements _FetchProfile {
  const _$_FetchProfile();

  @override
  String toString() {
    return 'UserActionsEvent.fetchProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return fetchProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return fetchProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return fetchProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return fetchProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (fetchProfile != null) {
      return fetchProfile(this);
    }
    return orElse();
  }
}

abstract class _FetchProfile implements UserActionsEvent {
  const factory _FetchProfile() = _$_FetchProfile;
}

/// @nodoc
abstract class _$LikeEpisodesCopyWith<$Res> {
  factory _$LikeEpisodesCopyWith(
          _LikeEpisodes value, $Res Function(_LikeEpisodes) then) =
      __$LikeEpisodesCopyWithImpl<$Res>;
  $Res call({bool likeStatus, Episodes episodes});

  $EpisodesCopyWith<$Res> get episodes;
}

/// @nodoc
class __$LikeEpisodesCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$LikeEpisodesCopyWith<$Res> {
  __$LikeEpisodesCopyWithImpl(
      _LikeEpisodes _value, $Res Function(_LikeEpisodes) _then)
      : super(_value, (v) => _then(v as _LikeEpisodes));

  @override
  _LikeEpisodes get _value => super._value as _LikeEpisodes;

  @override
  $Res call({
    Object? likeStatus = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_LikeEpisodes(
      likeStatus == freezed
          ? _value.likeStatus
          : likeStatus // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_LikeEpisodes implements _LikeEpisodes {
  const _$_LikeEpisodes(this.likeStatus, this.episodes);

  @override
  final bool likeStatus;
  @override
  final Episodes episodes;

  @override
  String toString() {
    return 'UserActionsEvent.likeEpisodes(likeStatus: $likeStatus, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeEpisodes &&
            (identical(other.likeStatus, likeStatus) ||
                other.likeStatus == likeStatus) &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, likeStatus, episodes);

  @JsonKey(ignore: true)
  @override
  _$LikeEpisodesCopyWith<_LikeEpisodes> get copyWith =>
      __$LikeEpisodesCopyWithImpl<_LikeEpisodes>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return likeEpisodes(likeStatus, episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return likeEpisodes?.call(likeStatus, episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (likeEpisodes != null) {
      return likeEpisodes(likeStatus, episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return likeEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return likeEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (likeEpisodes != null) {
      return likeEpisodes(this);
    }
    return orElse();
  }
}

abstract class _LikeEpisodes implements UserActionsEvent {
  const factory _LikeEpisodes(bool likeStatus, Episodes episodes) =
      _$_LikeEpisodes;

  bool get likeStatus;
  Episodes get episodes;
  @JsonKey(ignore: true)
  _$LikeEpisodesCopyWith<_LikeEpisodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CheckLikeStatusCopyWith<$Res> {
  factory _$CheckLikeStatusCopyWith(
          _CheckLikeStatus value, $Res Function(_CheckLikeStatus) then) =
      __$CheckLikeStatusCopyWithImpl<$Res>;
  $Res call({Episodes episodes});

  $EpisodesCopyWith<$Res> get episodes;
}

/// @nodoc
class __$CheckLikeStatusCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$CheckLikeStatusCopyWith<$Res> {
  __$CheckLikeStatusCopyWithImpl(
      _CheckLikeStatus _value, $Res Function(_CheckLikeStatus) _then)
      : super(_value, (v) => _then(v as _CheckLikeStatus));

  @override
  _CheckLikeStatus get _value => super._value as _CheckLikeStatus;

  @override
  $Res call({
    Object? episodes = freezed,
  }) {
    return _then(_CheckLikeStatus(
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

class _$_CheckLikeStatus implements _CheckLikeStatus {
  const _$_CheckLikeStatus(this.episodes);

  @override
  final Episodes episodes;

  @override
  String toString() {
    return 'UserActionsEvent.checkLikeStatus(episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckLikeStatus &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episodes);

  @JsonKey(ignore: true)
  @override
  _$CheckLikeStatusCopyWith<_CheckLikeStatus> get copyWith =>
      __$CheckLikeStatusCopyWithImpl<_CheckLikeStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return checkLikeStatus(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return checkLikeStatus?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (checkLikeStatus != null) {
      return checkLikeStatus(episodes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return checkLikeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return checkLikeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (checkLikeStatus != null) {
      return checkLikeStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckLikeStatus implements UserActionsEvent {
  const factory _CheckLikeStatus(Episodes episodes) = _$_CheckLikeStatus;

  Episodes get episodes;
  @JsonKey(ignore: true)
  _$CheckLikeStatusCopyWith<_CheckLikeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchUserCommentsCopyWith<$Res> {
  factory _$FetchUserCommentsCopyWith(
          _FetchUserComments value, $Res Function(_FetchUserComments) then) =
      __$FetchUserCommentsCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$FetchUserCommentsCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$FetchUserCommentsCopyWith<$Res> {
  __$FetchUserCommentsCopyWithImpl(
      _FetchUserComments _value, $Res Function(_FetchUserComments) _then)
      : super(_value, (v) => _then(v as _FetchUserComments));

  @override
  _FetchUserComments get _value => super._value as _FetchUserComments;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_FetchUserComments(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchUserComments implements _FetchUserComments {
  const _$_FetchUserComments(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserActionsEvent.fetchUserComments(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchUserComments &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  _$FetchUserCommentsCopyWith<_FetchUserComments> get copyWith =>
      __$FetchUserCommentsCopyWithImpl<_FetchUserComments>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return fetchUserComments(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return fetchUserComments?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (fetchUserComments != null) {
      return fetchUserComments(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return fetchUserComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return fetchUserComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (fetchUserComments != null) {
      return fetchUserComments(this);
    }
    return orElse();
  }
}

abstract class _FetchUserComments implements UserActionsEvent {
  const factory _FetchUserComments(String userId) = _$_FetchUserComments;

  String get userId;
  @JsonKey(ignore: true)
  _$FetchUserCommentsCopyWith<_FetchUserComments> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$UserActionsEventCopyWithImpl<$Res>
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
    return 'UserActionsEvent.commentsReceived(failureOrComments: $failureOrComments)';
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
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return commentsReceived(failureOrComments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return commentsReceived?.call(failureOrComments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
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
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return commentsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return commentsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (commentsReceived != null) {
      return commentsReceived(this);
    }
    return orElse();
  }
}

abstract class _CommentsReceived implements UserActionsEvent {
  const factory _CommentsReceived(
          Either<UserActionsFailure, List<Comments>> failureOrComments) =
      _$_CommentsReceived;

  Either<UserActionsFailure, List<Comments>> get failureOrComments;
  @JsonKey(ignore: true)
  _$CommentsReceivedCopyWith<_CommentsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProfileReceivedCopyWith<$Res> {
  factory _$ProfileReceivedCopyWith(
          _ProfileReceived value, $Res Function(_ProfileReceived) then) =
      __$ProfileReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserActionsFailure, AppUser> failureOrProfile});
}

/// @nodoc
class __$ProfileReceivedCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$ProfileReceivedCopyWith<$Res> {
  __$ProfileReceivedCopyWithImpl(
      _ProfileReceived _value, $Res Function(_ProfileReceived) _then)
      : super(_value, (v) => _then(v as _ProfileReceived));

  @override
  _ProfileReceived get _value => super._value as _ProfileReceived;

  @override
  $Res call({
    Object? failureOrProfile = freezed,
  }) {
    return _then(_ProfileReceived(
      failureOrProfile == freezed
          ? _value.failureOrProfile
          : failureOrProfile // ignore: cast_nullable_to_non_nullable
              as Either<UserActionsFailure, AppUser>,
    ));
  }
}

/// @nodoc

class _$_ProfileReceived implements _ProfileReceived {
  const _$_ProfileReceived(this.failureOrProfile);

  @override
  final Either<UserActionsFailure, AppUser> failureOrProfile;

  @override
  String toString() {
    return 'UserActionsEvent.profileReceived(failureOrProfile: $failureOrProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileReceived &&
            (identical(other.failureOrProfile, failureOrProfile) ||
                other.failureOrProfile == failureOrProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrProfile);

  @JsonKey(ignore: true)
  @override
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith =>
      __$ProfileReceivedCopyWithImpl<_ProfileReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return profileReceived(failureOrProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return profileReceived?.call(failureOrProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (profileReceived != null) {
      return profileReceived(failureOrProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return profileReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return profileReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (profileReceived != null) {
      return profileReceived(this);
    }
    return orElse();
  }
}

abstract class _ProfileReceived implements UserActionsEvent {
  const factory _ProfileReceived(
          Either<UserActionsFailure, AppUser> failureOrProfile) =
      _$_ProfileReceived;

  Either<UserActionsFailure, AppUser> get failureOrProfile;
  @JsonKey(ignore: true)
  _$ProfileReceivedCopyWith<_ProfileReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditNameCopyWith<$Res> {
  factory _$EditNameCopyWith(_EditName value, $Res Function(_EditName) then) =
      __$EditNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$EditNameCopyWithImpl<$Res> extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$EditNameCopyWith<$Res> {
  __$EditNameCopyWithImpl(_EditName _value, $Res Function(_EditName) _then)
      : super(_value, (v) => _then(v as _EditName));

  @override
  _EditName get _value => super._value as _EditName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_EditName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditName implements _EditName {
  const _$_EditName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'UserActionsEvent.editName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  _$EditNameCopyWith<_EditName> get copyWith =>
      __$EditNameCopyWithImpl<_EditName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return editName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return editName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (editName != null) {
      return editName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return editName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return editName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (editName != null) {
      return editName(this);
    }
    return orElse();
  }
}

abstract class _EditName implements UserActionsEvent {
  const factory _EditName(String name) = _$_EditName;

  String get name;
  @JsonKey(ignore: true)
  _$EditNameCopyWith<_EditName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditImageCopyWith<$Res> {
  factory _$EditImageCopyWith(
          _EditImage value, $Res Function(_EditImage) then) =
      __$EditImageCopyWithImpl<$Res>;
  $Res call({String image});
}

/// @nodoc
class __$EditImageCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$EditImageCopyWith<$Res> {
  __$EditImageCopyWithImpl(_EditImage _value, $Res Function(_EditImage) _then)
      : super(_value, (v) => _then(v as _EditImage));

  @override
  _EditImage get _value => super._value as _EditImage;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_EditImage(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditImage implements _EditImage {
  const _$_EditImage(this.image);

  @override
  final String image;

  @override
  String toString() {
    return 'UserActionsEvent.editImage(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  _$EditImageCopyWith<_EditImage> get copyWith =>
      __$EditImageCopyWithImpl<_EditImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return editImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return editImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (editImage != null) {
      return editImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return editImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return editImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (editImage != null) {
      return editImage(this);
    }
    return orElse();
  }
}

abstract class _EditImage implements UserActionsEvent {
  const factory _EditImage(String image) = _$_EditImage;

  String get image;
  @JsonKey(ignore: true)
  _$EditImageCopyWith<_EditImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCommentCopyWith<$Res> {
  factory _$DeleteCommentCopyWith(
          _DeleteComment value, $Res Function(_DeleteComment) then) =
      __$DeleteCommentCopyWithImpl<$Res>;
  $Res call({String commentId});
}

/// @nodoc
class __$DeleteCommentCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
    implements _$DeleteCommentCopyWith<$Res> {
  __$DeleteCommentCopyWithImpl(
      _DeleteComment _value, $Res Function(_DeleteComment) _then)
      : super(_value, (v) => _then(v as _DeleteComment));

  @override
  _DeleteComment get _value => super._value as _DeleteComment;

  @override
  $Res call({
    Object? commentId = freezed,
  }) {
    return _then(_DeleteComment(
      commentId == freezed
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteComment implements _DeleteComment {
  const _$_DeleteComment(this.commentId);

  @override
  final String commentId;

  @override
  String toString() {
    return 'UserActionsEvent.deleteComment(commentId: $commentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteComment &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  @JsonKey(ignore: true)
  @override
  _$DeleteCommentCopyWith<_DeleteComment> get copyWith =>
      __$DeleteCommentCopyWithImpl<_DeleteComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return deleteComment(commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return deleteComment?.call(commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class _DeleteComment implements UserActionsEvent {
  const factory _DeleteComment(String commentId) = _$_DeleteComment;

  String get commentId;
  @JsonKey(ignore: true)
  _$DeleteCommentCopyWith<_DeleteComment> get copyWith =>
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
class __$AddCommentCopyWithImpl<$Res>
    extends _$UserActionsEventCopyWithImpl<$Res>
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
    return 'UserActionsEvent.addComment(userId: $userId, comment: $comment, episodeId: $episodeId)';
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
    required TResult Function() fetchProfile,
    required TResult Function(bool likeStatus, Episodes episodes) likeEpisodes,
    required TResult Function(Episodes episodes) checkLikeStatus,
    required TResult Function(String userId) fetchUserComments,
    required TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)
        commentsReceived,
    required TResult Function(
            Either<UserActionsFailure, AppUser> failureOrProfile)
        profileReceived,
    required TResult Function(String name) editName,
    required TResult Function(String image) editImage,
    required TResult Function(String commentId) deleteComment,
    required TResult Function(String userId, String comment, String episodeId)
        addComment,
  }) {
    return addComment(userId, comment, episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
    TResult Function(String userId, String comment, String episodeId)?
        addComment,
  }) {
    return addComment?.call(userId, comment, episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProfile,
    TResult Function(bool likeStatus, Episodes episodes)? likeEpisodes,
    TResult Function(Episodes episodes)? checkLikeStatus,
    TResult Function(String userId)? fetchUserComments,
    TResult Function(
            Either<UserActionsFailure, List<Comments>> failureOrComments)?
        commentsReceived,
    TResult Function(Either<UserActionsFailure, AppUser> failureOrProfile)?
        profileReceived,
    TResult Function(String name)? editName,
    TResult Function(String image)? editImage,
    TResult Function(String commentId)? deleteComment,
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
    required TResult Function(_FetchProfile value) fetchProfile,
    required TResult Function(_LikeEpisodes value) likeEpisodes,
    required TResult Function(_CheckLikeStatus value) checkLikeStatus,
    required TResult Function(_FetchUserComments value) fetchUserComments,
    required TResult Function(_CommentsReceived value) commentsReceived,
    required TResult Function(_ProfileReceived value) profileReceived,
    required TResult Function(_EditName value) editName,
    required TResult Function(_EditImage value) editImage,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_AddComment value) addComment,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProfile value)? fetchProfile,
    TResult Function(_LikeEpisodes value)? likeEpisodes,
    TResult Function(_CheckLikeStatus value)? checkLikeStatus,
    TResult Function(_FetchUserComments value)? fetchUserComments,
    TResult Function(_CommentsReceived value)? commentsReceived,
    TResult Function(_ProfileReceived value)? profileReceived,
    TResult Function(_EditName value)? editName,
    TResult Function(_EditImage value)? editImage,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_AddComment value)? addComment,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class _AddComment implements UserActionsEvent {
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
class _$UserActionsStateTearOff {
  const _$UserActionsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _ProfileLoaded profileLoaded(AppUser profile) {
    return _ProfileLoaded(
      profile,
    );
  }

  _Error error(UserActionsFailure failure) {
    return _Error(
      failure,
    );
  }

  _LikeStatus likeStatus(bool isLiked) {
    return _LikeStatus(
      isLiked,
    );
  }

  _UpdateNameSuccess updateNameSuccess(AppUser user) {
    return _UpdateNameSuccess(
      user,
    );
  }

  _UpdateImageSuccess updateImageSuccess(AppUser user) {
    return _UpdateImageSuccess(
      user,
    );
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _AddSuccess addSuccess() {
    return const _AddSuccess();
  }

  _UserCommentsLoaded userCommentsLoaded(List<Comments> comments) {
    return _UserCommentsLoaded(
      comments,
    );
  }
}

/// @nodoc
const $UserActionsState = _$UserActionsStateTearOff();

/// @nodoc
mixin _$UserActionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActionsStateCopyWith<$Res> {
  factory $UserActionsStateCopyWith(
          UserActionsState value, $Res Function(UserActionsState) then) =
      _$UserActionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserActionsStateCopyWithImpl<$Res>
    implements $UserActionsStateCopyWith<$Res> {
  _$UserActionsStateCopyWithImpl(this._value, this._then);

  final UserActionsState _value;
  // ignore: unused_field
  final $Res Function(UserActionsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserActionsStateCopyWithImpl<$Res>
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
    return 'UserActionsState.initial()';
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
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
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
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserActionsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UserActionsStateCopyWithImpl<$Res>
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
    return 'UserActionsState.loading()';
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
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
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
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserActionsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ProfileLoadedCopyWith<$Res> {
  factory _$ProfileLoadedCopyWith(
          _ProfileLoaded value, $Res Function(_ProfileLoaded) then) =
      __$ProfileLoadedCopyWithImpl<$Res>;
  $Res call({AppUser profile});

  $AppUserCopyWith<$Res> get profile;
}

/// @nodoc
class __$ProfileLoadedCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
    implements _$ProfileLoadedCopyWith<$Res> {
  __$ProfileLoadedCopyWithImpl(
      _ProfileLoaded _value, $Res Function(_ProfileLoaded) _then)
      : super(_value, (v) => _then(v as _ProfileLoaded));

  @override
  _ProfileLoaded get _value => super._value as _ProfileLoaded;

  @override
  $Res call({
    Object? profile = freezed,
  }) {
    return _then(_ProfileLoaded(
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get profile {
    return $AppUserCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_ProfileLoaded implements _ProfileLoaded {
  const _$_ProfileLoaded(this.profile);

  @override
  final AppUser profile;

  @override
  String toString() {
    return 'UserActionsState.profileLoaded(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileLoaded &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  _$ProfileLoadedCopyWith<_ProfileLoaded> get copyWith =>
      __$ProfileLoadedCopyWithImpl<_ProfileLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return profileLoaded(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return profileLoaded?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return profileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoaded implements UserActionsState {
  const factory _ProfileLoaded(AppUser profile) = _$_ProfileLoaded;

  AppUser get profile;
  @JsonKey(ignore: true)
  _$ProfileLoadedCopyWith<_ProfileLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({UserActionsFailure failure});

  $UserActionsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UserActionsStateCopyWithImpl<$Res>
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
              as UserActionsFailure,
    ));
  }

  @override
  $UserActionsFailureCopyWith<$Res> get failure {
    return $UserActionsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.failure);

  @override
  final UserActionsFailure failure;

  @override
  String toString() {
    return 'UserActionsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
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
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserActionsState {
  const factory _Error(UserActionsFailure failure) = _$_Error;

  UserActionsFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikeStatusCopyWith<$Res> {
  factory _$LikeStatusCopyWith(
          _LikeStatus value, $Res Function(_LikeStatus) then) =
      __$LikeStatusCopyWithImpl<$Res>;
  $Res call({bool isLiked});
}

/// @nodoc
class __$LikeStatusCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
    implements _$LikeStatusCopyWith<$Res> {
  __$LikeStatusCopyWithImpl(
      _LikeStatus _value, $Res Function(_LikeStatus) _then)
      : super(_value, (v) => _then(v as _LikeStatus));

  @override
  _LikeStatus get _value => super._value as _LikeStatus;

  @override
  $Res call({
    Object? isLiked = freezed,
  }) {
    return _then(_LikeStatus(
      isLiked == freezed
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LikeStatus implements _LikeStatus {
  const _$_LikeStatus(this.isLiked);

  @override
  final bool isLiked;

  @override
  String toString() {
    return 'UserActionsState.likeStatus(isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LikeStatus &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLiked);

  @JsonKey(ignore: true)
  @override
  _$LikeStatusCopyWith<_LikeStatus> get copyWith =>
      __$LikeStatusCopyWithImpl<_LikeStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return likeStatus(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return likeStatus?.call(isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (likeStatus != null) {
      return likeStatus(isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return likeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return likeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (likeStatus != null) {
      return likeStatus(this);
    }
    return orElse();
  }
}

abstract class _LikeStatus implements UserActionsState {
  const factory _LikeStatus(bool isLiked) = _$_LikeStatus;

  bool get isLiked;
  @JsonKey(ignore: true)
  _$LikeStatusCopyWith<_LikeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateNameSuccessCopyWith<$Res> {
  factory _$UpdateNameSuccessCopyWith(
          _UpdateNameSuccess value, $Res Function(_UpdateNameSuccess) then) =
      __$UpdateNameSuccessCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateNameSuccessCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
    implements _$UpdateNameSuccessCopyWith<$Res> {
  __$UpdateNameSuccessCopyWithImpl(
      _UpdateNameSuccess _value, $Res Function(_UpdateNameSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateNameSuccess));

  @override
  _UpdateNameSuccess get _value => super._value as _UpdateNameSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdateNameSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UpdateNameSuccess implements _UpdateNameSuccess {
  const _$_UpdateNameSuccess(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'UserActionsState.updateNameSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateNameSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$UpdateNameSuccessCopyWith<_UpdateNameSuccess> get copyWith =>
      __$UpdateNameSuccessCopyWithImpl<_UpdateNameSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return updateNameSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return updateNameSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (updateNameSuccess != null) {
      return updateNameSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return updateNameSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return updateNameSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (updateNameSuccess != null) {
      return updateNameSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateNameSuccess implements UserActionsState {
  const factory _UpdateNameSuccess(AppUser user) = _$_UpdateNameSuccess;

  AppUser get user;
  @JsonKey(ignore: true)
  _$UpdateNameSuccessCopyWith<_UpdateNameSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateImageSuccessCopyWith<$Res> {
  factory _$UpdateImageSuccessCopyWith(
          _UpdateImageSuccess value, $Res Function(_UpdateImageSuccess) then) =
      __$UpdateImageSuccessCopyWithImpl<$Res>;
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateImageSuccessCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
    implements _$UpdateImageSuccessCopyWith<$Res> {
  __$UpdateImageSuccessCopyWithImpl(
      _UpdateImageSuccess _value, $Res Function(_UpdateImageSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateImageSuccess));

  @override
  _UpdateImageSuccess get _value => super._value as _UpdateImageSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdateImageSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UpdateImageSuccess implements _UpdateImageSuccess {
  const _$_UpdateImageSuccess(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'UserActionsState.updateImageSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateImageSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$UpdateImageSuccessCopyWith<_UpdateImageSuccess> get copyWith =>
      __$UpdateImageSuccessCopyWithImpl<_UpdateImageSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return updateImageSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return updateImageSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (updateImageSuccess != null) {
      return updateImageSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return updateImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return updateImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (updateImageSuccess != null) {
      return updateImageSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateImageSuccess implements UserActionsState {
  const factory _UpdateImageSuccess(AppUser user) = _$_UpdateImageSuccess;

  AppUser get user;
  @JsonKey(ignore: true)
  _$UpdateImageSuccessCopyWith<_UpdateImageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
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
    return 'UserActionsState.deleteSuccess()';
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
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
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
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements UserActionsState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$AddSuccessCopyWith<$Res> {
  factory _$AddSuccessCopyWith(
          _AddSuccess value, $Res Function(_AddSuccess) then) =
      __$AddSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddSuccessCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
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
    return 'UserActionsState.addSuccess()';
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
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccess implements UserActionsState {
  const factory _AddSuccess() = _$_AddSuccess;
}

/// @nodoc
abstract class _$UserCommentsLoadedCopyWith<$Res> {
  factory _$UserCommentsLoadedCopyWith(
          _UserCommentsLoaded value, $Res Function(_UserCommentsLoaded) then) =
      __$UserCommentsLoadedCopyWithImpl<$Res>;
  $Res call({List<Comments> comments});
}

/// @nodoc
class __$UserCommentsLoadedCopyWithImpl<$Res>
    extends _$UserActionsStateCopyWithImpl<$Res>
    implements _$UserCommentsLoadedCopyWith<$Res> {
  __$UserCommentsLoadedCopyWithImpl(
      _UserCommentsLoaded _value, $Res Function(_UserCommentsLoaded) _then)
      : super(_value, (v) => _then(v as _UserCommentsLoaded));

  @override
  _UserCommentsLoaded get _value => super._value as _UserCommentsLoaded;

  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_UserCommentsLoaded(
      comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comments>,
    ));
  }
}

/// @nodoc

class _$_UserCommentsLoaded implements _UserCommentsLoaded {
  const _$_UserCommentsLoaded(this.comments);

  @override
  final List<Comments> comments;

  @override
  String toString() {
    return 'UserActionsState.userCommentsLoaded(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCommentsLoaded &&
            const DeepCollectionEquality().equals(other.comments, comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comments));

  @JsonKey(ignore: true)
  @override
  _$UserCommentsLoadedCopyWith<_UserCommentsLoaded> get copyWith =>
      __$UserCommentsLoadedCopyWithImpl<_UserCommentsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser profile) profileLoaded,
    required TResult Function(UserActionsFailure failure) error,
    required TResult Function(bool isLiked) likeStatus,
    required TResult Function(AppUser user) updateNameSuccess,
    required TResult Function(AppUser user) updateImageSuccess,
    required TResult Function() deleteSuccess,
    required TResult Function() addSuccess,
    required TResult Function(List<Comments> comments) userCommentsLoaded,
  }) {
    return userCommentsLoaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
  }) {
    return userCommentsLoaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser profile)? profileLoaded,
    TResult Function(UserActionsFailure failure)? error,
    TResult Function(bool isLiked)? likeStatus,
    TResult Function(AppUser user)? updateNameSuccess,
    TResult Function(AppUser user)? updateImageSuccess,
    TResult Function()? deleteSuccess,
    TResult Function()? addSuccess,
    TResult Function(List<Comments> comments)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (userCommentsLoaded != null) {
      return userCommentsLoaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_Error value) error,
    required TResult Function(_LikeStatus value) likeStatus,
    required TResult Function(_UpdateNameSuccess value) updateNameSuccess,
    required TResult Function(_UpdateImageSuccess value) updateImageSuccess,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_AddSuccess value) addSuccess,
    required TResult Function(_UserCommentsLoaded value) userCommentsLoaded,
  }) {
    return userCommentsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
  }) {
    return userCommentsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_Error value)? error,
    TResult Function(_LikeStatus value)? likeStatus,
    TResult Function(_UpdateNameSuccess value)? updateNameSuccess,
    TResult Function(_UpdateImageSuccess value)? updateImageSuccess,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_AddSuccess value)? addSuccess,
    TResult Function(_UserCommentsLoaded value)? userCommentsLoaded,
    required TResult orElse(),
  }) {
    if (userCommentsLoaded != null) {
      return userCommentsLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserCommentsLoaded implements UserActionsState {
  const factory _UserCommentsLoaded(List<Comments> comments) =
      _$_UserCommentsLoaded;

  List<Comments> get comments;
  @JsonKey(ignore: true)
  _$UserCommentsLoadedCopyWith<_UserCommentsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
