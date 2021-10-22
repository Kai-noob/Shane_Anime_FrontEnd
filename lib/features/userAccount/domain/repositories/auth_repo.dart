import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUp(
      String name, String email, String password);

  Future<Either<Failure, void>> signIn(String email, String password);

  Future<Either<Failure, void>> saveUser(
      String userName, String email, User user);

  Future<Either<Failure, bool>> signOut();

  Future<Either<Failure, UserEntity>> getUser();
}
