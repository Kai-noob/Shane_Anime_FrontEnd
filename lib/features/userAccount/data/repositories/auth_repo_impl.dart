import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../datasources/auth_data_source.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repo.dart';

// typedef _GetUserModel = Future<UserModel> Function();

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepoImpl({required this.authDataSource});

  @override
  Future<Either<Failure, UserEntity>> signUp(
      String name, String email, String password) async {
    try {
      final result = await authDataSource.signUp(name, email, password);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on EmailInUseException {
      return Left(EmailInUseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveUser(
      String userName, String email, User user) async {
    try {
      return Right(await authDataSource.saveUser(userName, email, user));
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signIn(String email, String password) async {
    try {
      return Right(await authDataSource.signIn(email, password));
    } on UserNotFoundException {
      return Left(UserNotFoundFailure());
    } on WrongPasswordException {
      return Left(WrongPasswordFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      bool signedOut = await authDataSource.signOut();
      return Right(signedOut);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    try {
      UserEntity user = await authDataSource.getUserProfile();
      return Right(user);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
