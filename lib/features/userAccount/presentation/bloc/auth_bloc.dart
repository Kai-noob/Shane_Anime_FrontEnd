import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_up_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

const String serverFailureMessage = 'Server Error';

const String emailInUseMessage = 'Email Already In Use';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignUpUseCase _signUpUseCase;
  AuthBloc(this._signUpUseCase) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is CreateAccountWithEmail) {
      yield Loading();
      final failureOrSuccess = await _signUpUseCase.call(
          event.userName, event.email, event.password);

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<AuthState> _eitherSuccessOrErrorState(
      Either<Failure, UserEntity> failureOrSuccess) async* {
    yield failureOrSuccess.fold(
        (failure) => Error(message: _mapFailureToMessage(failure)),
        (user) => Authenticated(user: user));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case EmailInUseFailure:
        return emailInUseMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
