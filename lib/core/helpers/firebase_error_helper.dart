import 'package:movie_app/core/strings/firebase_constants.dart';

abstract class FirebaseErrorHelper {
  static String getAppException(String firebaseCode) {
    switch (firebaseCode) {
      case FirebaseConstants.userNotFoundFirebaseException:
        return FirebaseConstants.userNotFoundException;
      case FirebaseConstants.userPasswordFirebaseException:
        return FirebaseConstants.wrongPasswordException;
      case FirebaseConstants.invalidEmailFirebaseException:
        return FirebaseConstants.invalidEmailException;
      case FirebaseConstants.userDisabledFirebaseException:
        return FirebaseConstants.userDisabledException;
      case FirebaseConstants.tooManyRequestFirebaseException:
        return FirebaseConstants.tooManyRequestException;
      case FirebaseConstants.objectNotFoundFirebaseException:
        return FirebaseConstants.objectNotFoundException;
      case FirebaseConstants.offlineFirebaseException:
        return FirebaseConstants.offlineException;
      default:
        return FirebaseConstants.unexpectedException;
    }
  }
}
