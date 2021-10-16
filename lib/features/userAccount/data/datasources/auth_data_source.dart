import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  Future<UserCredential> signUp(String email, String password);

  Future<void> saveUser(String userName, String email, User user);
}
