import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class EmailInUseFailure extends Failure {}

class SearchFailure extends Failure {}

class WrongPasswordFailure extends Failure {}

class UserNotFoundFailure extends Failure {}

class SignInFailure extends Failure {}

class ConnectionFailure extends Failure {}

class LogoutFailure extends Failure {}

class ServerFailure extends Failure {}
