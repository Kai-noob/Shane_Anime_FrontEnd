import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source.dart';
import 'package:movie_app/features/userAccount/data/models/user_model.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthDataSourceImpl();

  @override
  Future<UserModel> signUp(String name, String email, String password) async {
    try {
      final UserCredential res = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return UserModel(uid: res.user!.uid, email: res.user!.email!);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-user') {
        throw EmailInUseException();
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> saveUser(String userName, String email, User user) async {
    CollectionReference userRef =
        FirebaseFirestore.instance.collection("users");
    return await userRef.doc(user.uid).set({
      'username': userName,
      'email': email,
      'id': user.uid,
    });
  }

  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final UserCredential res = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return UserModel(uid: res.user!.uid, email: res.user!.email!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        throw WrongPasswordException();
      }
      if (e.code == 'user-not-found') {
        throw UserNotFoundException();
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}
