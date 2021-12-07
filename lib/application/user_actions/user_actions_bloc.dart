import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';

import '../../domain/core/errors.dart';
import '../../domain/episodes/episodes.dart';
import '../../domain/user_actions/comment.dart';
import '../../domain/user_actions/i_user_actions_repository.dart';
import '../../domain/user_actions/user_actions_failure.dart';

part 'user_actions_event.dart';
part 'user_actions_state.dart';
part 'user_actions_bloc.freezed.dart';

@injectable
class UserActionsBloc extends Bloc<UserActionsEvent, UserActionsState> {
  final IAuthFacade _authFacade;
  final IUserActionsRepository _userActionsRepo;

  StreamSubscription<Either<UserActionsFailure, List<Comments>>>?
      commentsStream;
  StreamSubscription<Either<UserActionsFailure, AppUser>>? usersStream;
  UserActionsBloc(this._authFacade, this._userActionsRepo)
      : super(const UserActionsState.initial()) {
    on<UserActionsEvent>(_onEvent);
  }

  Future<void> _onEvent(
      UserActionsEvent event, Emitter<UserActionsState> emit) async {
    await event.map(fetchProfile: (e) async {
      emit(const UserActionsState.loading());

      final userOption = await _authFacade.getSignedInUser();
      final currentUser =
          userOption.getOrElse(() => throw NotAuthenticatedError());

      await usersStream?.cancel();
      usersStream = _userActionsRepo
          .fetchProfile(currentUser.id)
          .listen((failureOrProfile) => add(
                UserActionsEvent.profileReceived(failureOrProfile),
              ));
    }, likeEpisodes: (e) async {
      final userOption = await _authFacade.getSignedInUser();
      final currentUser =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      e.episodes.like[currentUser.id] = e.likeStatus;
      _userActionsRepo.likeComic(currentUser.id, e.episodes);
      emit(UserActionsState.likeStatus(e.likeStatus));
    }, checkLikeStatus: (e) async {
      final userOption = await _authFacade.getSignedInUser();
      final currentUser =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final isLiked = e.episodes.like[currentUser.id] ?? false;
      emit(UserActionsState.likeStatus(isLiked));
    }, fetchUserComments: (e) async {
      emit(const UserActionsState.loading());

      await commentsStream?.cancel();
      commentsStream = _userActionsRepo
          .fetchUserComments(e.userId)
          .listen((failureOrComments) => add(
                UserActionsEvent.commentsReceived(failureOrComments),
              ));
    }, profileReceived: (e) async {
      emit(e.failureOrProfile.fold((l) => UserActionsState.error(l), (r) {
        return UserActionsState.profileLoaded(r);
      }));
    }, editName: (e) async {
      emit(const UserActionsState.loading());
      final userOption = await _authFacade.getSignedInUser();
      final currentUser =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final updateUser = currentUser.copyWith(username: e.name);
      await _userActionsRepo.editName(updateUser);
      emit(UserActionsState.updateNameSuccess(updateUser));
    }, deleteComment: (e) async {
      await _userActionsRepo.deleteComments(e.commentId);
    }, addComment: (e) async {
      await _userActionsRepo.addComments(e.userId, e.comment, e.episodeId);

      emit(const UserActionsState.addSuccess());
    }, editImage: (e) async {
      emit(const UserActionsState.loading());
      final userOption = await _authFacade.getSignedInUser();
      final currentUser =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final updateUser = currentUser.copyWith(photoUrl: e.image);
      await _userActionsRepo.editImage(updateUser);
      emit(UserActionsState.updateImageSuccess(updateUser));
    }, commentsReceived: (e) async {
      emit(e.failureOrComments.fold((l) => UserActionsState.error(l),
          (r) => UserActionsState.userCommentsLoaded(r)));
    });
  }

  @override
  Future<void> close() async {
    await usersStream?.cancel();
    await commentsStream?.cancel();
    return super.close();
  }
}
