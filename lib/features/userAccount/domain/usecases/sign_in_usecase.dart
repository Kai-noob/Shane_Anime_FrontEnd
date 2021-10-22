import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repo.dart';

class SignInUseCase {
  final AuthRepo authRepo;

  SignInUseCase({required this.authRepo});

  Future<Either<Failure, void>> call(String email, String password) {
    return authRepo.signIn(email, password);
  }
}
