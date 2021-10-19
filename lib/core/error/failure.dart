import 'package:equatable/equatable.dart';
import 'package:movie_app/core/strings/firebase_constants.dart';

abstract class Failure extends Equatable {
  String get failureCode => FirebaseConstants.unexpectedException;

  String get errorMessage => failureCode;

  @override
  List<Object> get props => [];
}

class EmailInUseFailure extends Failure {}

class WrongPasswordFailure extends Failure {}

class UserNotFoundFailure extends Failure {}

class SignInFailure extends Failure {}

class ConnectionFailure extends Failure {}

class LogoutFailure extends Failure {}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {
  @override
  String get failureCode => FirebaseConstants.cacheException;
}

class FirebaseFailure extends Failure {
  FirebaseFailure({this.errorCode = FirebaseConstants.unexpectedException});

  final String errorCode;

  @override
  String get failureCode => errorCode;
}

class EmptyFieldFailure extends Failure {
  @override
  String get failureCode => FirebaseConstants.emptyFieldException;
}

class NoChapterFoundFailure extends Failure {
  @override
  String get failureCode => FirebaseConstants.noChapterFoundException;
}

class ChapterNotFoundFailure extends Failure {
  @override
  String get failureCode => FirebaseConstants.chapterNotFoundException;
}

class OfflineFailure extends Failure {
  @override
  String get failureCode => FirebaseConstants.offlineException;
}
