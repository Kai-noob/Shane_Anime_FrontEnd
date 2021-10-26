import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repo.dart';

class SignUpUseCase {
  final AuthRepo authRepo;

  SignUpUseCase({required this.authRepo});

  Future<Either<Failure, UserEntity>> call(
      String name, String email, String password) {
    return authRepo.signUp(name, email, password);
  }
}
