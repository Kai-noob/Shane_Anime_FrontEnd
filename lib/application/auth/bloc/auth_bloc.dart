import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;
  AuthBloc(this.authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequested>(_authCheckRequested);
    on<SignOut>(_signOut);
  }

  void _authCheckRequested(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = await authFacade.getSignedInUser();
    emit(userOption.fold(() => const AuthState.unauthenticated(),
        (a) => const AuthState.authenticated()));
  }

  void _signOut(SignOut event, Emitter<AuthState> emit) async {
    await authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
