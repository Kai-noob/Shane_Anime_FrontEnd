import 'package:firebase_auth/firebase_auth.dart';

enum FirebaseAuthResultStatus {
  Successful,
  EmailAlreadyExists,
  WrongPassword,
  InvalidEmail,
  UserNotFound,
  TooManyRequests,
  Undefined,
}

class FirebaseAuthExceptionHandler {
  static FirebaseAuthResultStatus handleException(FirebaseAuthException e) {
    FirebaseAuthResultStatus result;
    switch (e.code) {
      case 'invalid-email':
        result = FirebaseAuthResultStatus.InvalidEmail;
        break;
      case 'wrong-password':
        result = FirebaseAuthResultStatus.WrongPassword;
        break;
      case 'user-not-found':
        result = FirebaseAuthResultStatus.UserNotFound;
        break;
      case 'too-many-requests':
        result = FirebaseAuthResultStatus.TooManyRequests;
        break;
      case 'email-already-exists':
        result = FirebaseAuthResultStatus.EmailAlreadyExists;
        break;
      default:
        result = FirebaseAuthResultStatus.Undefined;
    }
    return result;
  }

  static String exceptionMessage(FirebaseAuthResultStatus result) {
    String? message = '';
    switch (result) {
      case FirebaseAuthResultStatus.Successful:
        message = 'Success.';
        break;
      case FirebaseAuthResultStatus.EmailAlreadyExists:
        message = 'Email already exists.';
        break;
      case FirebaseAuthResultStatus.WrongPassword:
        message = 'Incorrect Password.';
        break;
      case FirebaseAuthResultStatus.InvalidEmail:
        message = 'Invalid Email';
        break;
      case FirebaseAuthResultStatus.UserNotFound:
        message = 'User Not Found.';
        break;
      case FirebaseAuthResultStatus.TooManyRequests:
        message = 'Too Many Requests';
        break;
      case FirebaseAuthResultStatus.Undefined:
        message = 'Undefinded Error';
        break;
    }
    return message;
  }
}
