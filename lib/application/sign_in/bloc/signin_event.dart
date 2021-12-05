part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.signInWithGoogle() = SignInWithGoogle;
  const factory SigninEvent.signInWithFacebook() = SignInWithFacebook;
}
