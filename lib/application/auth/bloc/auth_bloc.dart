import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;
  AuthBloc(this.authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>(_authEvent);
  }

  Future<void> _authEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(authCheckRequested: (e) async {
      final userOption = await authFacade.getSignedInUser();
      emit(userOption.fold(() => const AuthState.unauthenticated(),
          (a) => AuthState.authenticated(a)));
    }, signOut: (e) async {
      await authFacade.signOut();
      emit(const AuthState.unauthenticated());
    });
  }
}
