import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/user.dart';
import '../repositories/auth_repo.dart';

class GetUserUseCase {
  final AuthRepo authRepo;

  GetUserUseCase({required this.authRepo});

  Future<Either<Failure, UserEntity>> call() {
    return authRepo.getUser();
  }
}
