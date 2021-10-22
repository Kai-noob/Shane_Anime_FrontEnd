import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import '../models/user_model.dart';

abstract class AuthDataSource {
  Future<UserEntity> signUp(String name, String email, String password);

  Future<void> saveUser(String userName, String email, User user);

  Future<void> signIn(String email, String password);

  Future<bool> signOut();

  Future<UserModel> getUserProfile();
}
