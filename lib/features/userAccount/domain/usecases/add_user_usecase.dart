import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

class AddUserUseCase {
  final AuthRepo authRepo;

  AddUserUseCase({required this.authRepo});

  Future<void> call(String userName, String email, User user) {
    return authRepo.saveUser(userName, email, user);
  }
}
