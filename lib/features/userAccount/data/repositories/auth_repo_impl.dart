import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/utils/connectivity.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source.dart';
import 'package:movie_app/features/userAccount/data/models/user_model.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

typedef Future<UserModel> _GetUserModel();

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepoImpl({required this.authDataSource});

  @override
  Future<Either<Failure, UserEntity>> signUp(
      String name, String email, String password) async {
    return _auth(() => authDataSource.signUp(name, email, password));
  }

  @override
  Future<void> saveUser(String userName, String email, User user) {
    return authDataSource.saveUser(userName, email, user);
  }

  Future<Either<Failure, UserEntity>> _auth(_GetUserModel getUserModel) async {
    if (await isNetworkOn()) {
      try {
        final result = await getUserModel();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure());
      } on EmailInUseException {
        return Left(EmailInUseFailure());
      }
    } else {
      return Left(ConnectionFailure());
    }
  }

  Future<Either<Failure, UserEntity>> _signIn(
      _GetUserModel getUserModel) async {
    if (await isNetworkOn()) {
      try {
        final result = await getUserModel();
        return Right(result);
      } on ServerException catch (e) {
        return Left(ServerFailure());
      } on WrongPasswordException {
        return Left(WrongPasswordFailure());
      } on UserNotFoundException {
        return Left(UserNotFoundFailure());
      }
    } else {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signIn(String email, String password) {
    return _signIn(() => authDataSource.signIn(email, password));
  }
}
