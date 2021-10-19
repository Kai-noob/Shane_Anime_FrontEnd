import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:movie_app/features/userAccount/domain/usecases/sign_in_usecase.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

const String serverFailureMessage = 'Server Error';

const String userNotFoundMessage = 'User Not Found';
const String wrongPasswordMessage = 'Wrong Password';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCase _signInUseCase;
  SignInBloc(this._signInUseCase) : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    if (event is AuthenticatedWithEmail) {
      yield SignInLoading();
      final failureOrSuccess =
          await _signInUseCase.call(event.email, event.password);

      yield* _eitherSuccessOrErrorState(failureOrSuccess);
    }
  }

  Stream<SignInState> _eitherSuccessOrErrorState(
      Either<Failure, UserEntity> failureOrSuccess) async* {
    yield failureOrSuccess.fold(
        (failure) => SignInError(message: _mapFailureToMessage(failure)),
        (user) => SignInSuccess(user: user));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case WrongPasswordFailure:
        return wrongPasswordMessage;
      case UserNotFoundFailure:
        return userNotFoundMessage;
      default:
        return 'Unexpected Error';
    }
  }
}
