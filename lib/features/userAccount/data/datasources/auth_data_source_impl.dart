import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FirebaseAuth firebaseAuth;

  AuthDataSourceImpl({required this.firebaseAuth});

  @override
  Future<UserCredential> signUp(String email, String password) async {
    UserCredential user = await firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return user;
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
}
