import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/data/models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> signUp(String name, String email, String password);

  Future<void> saveUser(String userName, String email, User user);

  Future<UserModel> signIn(String email, String password);
}
