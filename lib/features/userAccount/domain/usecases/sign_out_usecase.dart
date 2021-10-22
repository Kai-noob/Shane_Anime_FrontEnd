import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

class SignOutUseCase {
  final AuthRepo authRepo;

  SignOutUseCase({required this.authRepo});
  Future<Either<Failure, bool>> call() {
    return authRepo.signOut();
  }
}
