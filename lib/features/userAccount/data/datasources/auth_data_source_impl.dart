import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/features/userAccount/domain/entities/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/error/exceptions.dart';
import 'auth_data_source.dart';
import '../models/user_model.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  AuthDataSourceImpl();

  @override
  Future<UserEntity> signUp(String name, String email, String password) async {
    try {
      final UserCredential res = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();
      _sharedPreferences.setString("uid", res.user!.uid);
      await saveUser(name, email, res.user!);
      return UserModel(userName: name, uid: res.user!.uid, email: email);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-user') {
        throw EmailInUseException();
      } else {
        throw ServerException();
      }
    } catch (_) {
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
  Future<void> signIn(String email, String password) async {
    try {
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();

      final UserCredential res = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      _sharedPreferences.setString("uid", res.user!.uid);
      _auth.signInWithEmailAndPassword(email: email, password: password);
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

  @override
  Future<bool> signOut() async {
    try {
      final SharedPreferences _sharedPreferences =
          await SharedPreferences.getInstance();

      _sharedPreferences.clear();
      _auth.signOut();
      return true;
    } catch (e) {
      throw ServerException();
    }
  }

  String currentUid() {
    return _auth.currentUser!.uid;
  }

  @override
  Future<UserModel> getUserProfile() async {
    try {
      final documentSnapshot =
          await _firebaseFirestore.collection("users").doc(currentUid()).get();
      final _comic = documentSnapshot.data() as Map<String, dynamic>;
      return UserModel(
          userName: _comic["username"],
          uid: _comic["id"],
          email: _comic['email']);
    } catch (_) {
      throw ServerException();
    }
  }
}
