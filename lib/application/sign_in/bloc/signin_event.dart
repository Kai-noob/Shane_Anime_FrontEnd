part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SigninEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SigninEvent.registerWithEmailAndPassword() =
      RegisterWithEmailAndPassword;
  const factory SigninEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory SigninEvent.signInWithGoogle() = SignInWithGoogle;
}
