import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUp(
      String name, String email, String password);

  Future<Either<Failure, UserEntity>> signIn(String email, String password);

  Future<void> saveUser(String userName, String email, User user);
}
