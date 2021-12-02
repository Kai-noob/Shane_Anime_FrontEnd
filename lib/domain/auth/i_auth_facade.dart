import 'package:dartz/dartz.dart';
import 'auth_failures.dart';
import 'user.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  Future<void> signOut();
}
