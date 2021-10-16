import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

class SignUpUseCase {
  final AuthRepo authRepo;

  SignUpUseCase({required this.authRepo});

  Future<UserCredential> call(String email, String password) {
    return authRepo.signUp(email, password);
  }
}
