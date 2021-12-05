import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/auth_failures.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';

import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._firestore);

  @override
  Future<Option<AppUser>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) return none();
    final doc =
        await _firestore.collection("users").doc(firebaseUser.uid).get();
    final user = AppUser.fromJson(doc.data()!);
    // return optionOf(firebaseUser?.toDomain());
    return some(user);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
          idToken: googleAuthentication.idToken,
          accessToken: googleAuthentication.accessToken);
      final credential =
          await _firebaseAuth.signInWithCredential(authCredential);
      await _saveUserDocToDatabase(credential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "account-exists-with-different-credential") {
        return left(AuthFailure.accontExists());
        // AuthCredential? pendingCredential = e.credential;
        // List<String> userSignInMethods =
        //     await _firebaseAuth.fetchSignInMethodsForEmail(e.email!);

        // if (userSignInMethods.first == 'facebook.com') {
        //   // Create a new Facebook credential
        //   FacebookAuth facebookAuth = FacebookAuth.instance;
        //   AccessToken? token = await facebookAuth.accessToken;
        //   var facebookAuthCredential =
        //       FacebookAuthProvider.credential(token!.token);

        //   // Sign the user in with the credential
        //   UserCredential userCredential =
        //       await _firebaseAuth.signInWithCredential(facebookAuthCredential);

        //   // Link the pending credential with the existing account
        //   await userCredential.user!.linkWithCredential(pendingCredential!);

        //   // Success! Go back to your application flow
        //   return right(unit);
        // }

      }

      return left(const AuthFailure.serverError());
    }
  }

  Future<void> _saveUserDocToDatabase(UserCredential credential) async {
    final firebaseUser = credential.user!;
    final userDomain = firebaseUser.toDomain();
    Map<String, dynamic> userJson = userDomain.toJson();

    final doc =
        await _firestore.collection("users").doc(firebaseUser.uid).get();
    if (doc.exists) userJson = doc.data()!;

    await _firestore.collection("users").doc(userDomain.id).set(userJson);
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
      FacebookAuth.instance.logOut()
    ]);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    try {
      FacebookAuth facebookAuth = FacebookAuth.instance;

      LoginResult result = await facebookAuth.login();
      if (result.status == LoginStatus.success) {
        AccessToken? token = await facebookAuth.accessToken;
        // final _userData=facebookAuth.getUserData();
        final UserCredential credential =
            await _firebaseAuth.signInWithCredential(
                FacebookAuthProvider.credential(token!.token));
        _saveUserDocToDatabase(credential);
      } else {
        return left(AuthFailure.cancelledByUser());
      }
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "account-exists-with-different-credential") {
        return left(AuthFailure.accontExists());
        // AuthCredential? pendingCredential = e.credential;
        // List<String> userSignInMethods =
        //     await _firebaseAuth.fetchSignInMethodsForEmail(e.email!);

        // if (userSignInMethods.first == 'google.com') {
        //   final googleUser = await _googleSignIn.signIn();
        //   if (googleUser == null) {
        //     return left(const AuthFailure.cancelledByUser());
        //   }
        //   final googleAuthentication = await googleUser.authentication;

        //   final authCredential = GoogleAuthProvider.credential(
        //       idToken: googleAuthentication.idToken,
        //       accessToken: googleAuthentication.accessToken);
        //   UserCredential userCredential =
        //       await _firebaseAuth.signInWithCredential(authCredential);

        //   // Link the pending credential with the existing account
        //   await userCredential.user!.linkWithCredential(pendingCredential!);

        //   return right(unit);
        // }
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
