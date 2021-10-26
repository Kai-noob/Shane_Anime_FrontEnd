import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../repositories/auth_repo.dart';

class SignOutUseCase {
  final AuthRepo authRepo;

  SignOutUseCase({required this.authRepo});
  Future<Either<Failure, bool>> call() {
    return authRepo.signOut();
  }
}
