import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

class GetUserUseCase {
  final AuthRepo authRepo;

  GetUserUseCase({required this.authRepo});

  Future<Either<Failure, UserEntity>> call() {
    return authRepo.getUser();
  }
}
