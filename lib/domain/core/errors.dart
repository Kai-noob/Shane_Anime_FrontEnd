import 'failures.dart';

class UnexceptedError extends Error {
  final ValueFailure valueFailure;

  UnexceptedError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString("Failure was $valueFailure");
  }
}

class NotAuthenticatedError extends Error {}
