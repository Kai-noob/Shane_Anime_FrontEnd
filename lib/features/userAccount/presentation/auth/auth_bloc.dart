import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/sign_in_usecase.dart';
import '../../domain/usecases/sign_out_usecase.dart';
import '../../../../core/error/failure.dart';
import '../../domain/usecases/sign_up_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

const String serverFailureMessage = 'Server Error';
const String emailInUseMessage = 'Email Already In Use';
const String wrongPasswordMessage = 'Wrong Password.Please Fill correctly.';
const String userNotFoundMessage = 'User Account Not Found.';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;
  final SignOutUseCase _signOutUseCase;
  AuthBloc(this._signUpUseCase, this._signInUseCase, this._signOutUseCase)
      : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is CreateAccountWithEmail) {
      yield Loading();
      final failureOrSuccess = await _signUpUseCase.call(
          event.userName, event.email, event.password);

      yield* _eitherSignUpOrErrorState(failureOrSuccess);
    }
    if (event is SignInWithEmail) {
      yield Loading();
      final failureOrSuccess =
          await _signInUseCase.call(event.email, event.password);
      yield* _eitherSignInOrErrorState(failureOrSuccess);
    }
    if (event is SignOut) {
      yield Loading();
      final failureOrSuccess = await _signOutUseCase.call();

      yield* _eitherSignOutOrErrorState(failureOrSuccess);
    }
  }

  Stream<AuthState> _eitherSignOutOrErrorState(
      Either<Failure, bool> failureOrSuccess) async* {
    yield failureOrSuccess.fold(
        (failure) => SignOutError(message: _mapFailureToMessage(failure)),
        (success) => SignOutSuccess());
  }

  Stream<AuthState> _eitherSignUpOrErrorState(
      Either<Failure, void> failureOrSuccess) async* {
    yield failureOrSuccess.fold(
        (failure) => SignUpError(message: _mapFailureToMessage2(failure)),
        (user) => SignUpSuccess());
  }

  Stream<AuthState> _eitherSignInOrErrorState(
      Either<Failure, void> failureOrSuccess) async* {
    yield failureOrSuccess.fold(
        (failure) => SignInError(message: _mapFailureToMessage(failure)),
        (user) => SignInSuccess());
  }

  String _mapFailureToMessage2(Failure failure) {
    switch (failure.runtimeType) {
      case EmailInUseFailure:
        return emailInUseMessage;
      case ServerFailure:
        return serverFailureMessage;

      default:
        return 'Unexpected Error';
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case WrongPasswordFailure:
        return wrongPasswordMessage;
      case UserNotFoundFailure:
        return userNotFoundMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
