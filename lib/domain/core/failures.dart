import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required String input}) =
      InvalidEmail<T>;
  const factory ValueFailure.shortPassword({required String input}) =
      ShortPassword<T>;

  const factory ValueFailure.emailRequired({required String input}) =
      EmailRequired<T>;
  const factory ValueFailure.passwordRequired({required String input}) =
      PasswordRequired<T>;
}
