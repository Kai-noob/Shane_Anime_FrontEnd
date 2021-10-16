import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<void> signIn();
  Future<UserCredential> signUp(String email, String password);

  Future<void> saveUser(String userName, String email, User user);
}
