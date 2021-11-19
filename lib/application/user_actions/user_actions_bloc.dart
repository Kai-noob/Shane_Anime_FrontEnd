import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/auth/i_auth_facade.dart';
import 'package:movie_app/domain/core/errors.dart';
import 'package:movie_app/domain/user_actions/i_user_actions_repository.dart';
import 'package:movie_app/domain/user_actions/profile.dart';

part 'user_actions_event.dart';
part 'user_actions_state.dart';
part 'user_actions_bloc.freezed.dart';

@injectable
class UserActionsBloc extends Bloc<UserActionsEvent, UserActionsState> {
  final IAuthFacade _authFacade;
  final IUserActionsRepository _userActionsRepo;
  UserActionsBloc(this._authFacade, this._userActionsRepo)
      : super(const UserActionsState.initial());

  @override
  Stream<UserActionsState> mapEventToState(UserActionsEvent event) async* {
    yield* event.map(fetchProfile: (e) async* {
      yield const UserActionsState.loading();
      final userOption = await _authFacade.getSignedInUser();
      final currentUser =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final failureOrSuccess =
          await _userActionsRepo.fetchProfile(currentUser.id);
      yield failureOrSuccess.fold((l) => const UserActionsState.error(),
          (r) => UserActionsState.loaded(r));
    });
  }
}
