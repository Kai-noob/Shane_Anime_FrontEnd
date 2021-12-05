part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState(
      {required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _SigninState;

  factory SigninState.initial() => SigninState(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
