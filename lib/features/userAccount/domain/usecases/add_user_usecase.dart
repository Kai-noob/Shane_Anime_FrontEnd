import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/failure.dart';
import '../repositories/auth_repo.dart';

class AddUserUseCase {
  final AuthRepo authRepo;

  AddUserUseCase({required this.authRepo});

  Future<Either<Failure, void>> call(String userName, String email, User user) {
    return authRepo.saveUser(userName, email, user);
  }
}
