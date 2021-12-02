import 'package:dartz/dartz.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  String emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (input.isEmpty) {
    return left(ValueFailure.emailRequired(input: input));
  }
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(input: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.passwordRequired(input: input));
  }
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(input: input));
  }
}
