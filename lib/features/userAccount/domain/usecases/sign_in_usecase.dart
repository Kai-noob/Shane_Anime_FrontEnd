import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

class SignInUseCase {
  final AuthRepo authRepo;

  SignInUseCase({required this.authRepo});

  Future<Either<Failure, UserEntity>> call(String email, String password) {
    return authRepo.signIn(email, password);
  }
}
