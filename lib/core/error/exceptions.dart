import 'package:movie_app/core/strings/firebase_constants.dart';

class EmailInUseException implements Exception {}

class WrongPasswordException implements Exception {}

class UserNotFoundException implements Exception {}

class ServerException implements Exception {}

class SignInException implements Exception {}

class LogoutException implements Exception {}

class NoChapterFoundException implements Exception {
  NoChapterFoundException({
    this.errorType = FirebaseConstants.noChapterFoundException,
  });

  final String errorType;
}

class ChapterNotFoundException implements Exception {
  ChapterNotFoundException({
    this.errorType = FirebaseConstants.chapterNotFoundException,
  });

  final String errorType;
}

class OfflineException implements Exception {
  OfflineException({this.errorType = FirebaseConstants.offlineException});

  final String errorType;
}

class TimeoutException implements Exception {}
