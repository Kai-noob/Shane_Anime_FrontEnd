part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState(
      {required EmailAddress emailAddress,
      required Password password,
      required AutovalidateMode showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _SigninState;

  factory SigninState.initial() => SigninState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        showErrorMessages: AutovalidateMode.onUserInteraction,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
