import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/auth/auth_failures.dart';
import 'package:movie_app/domain/auth/user.dart';
import 'package:movie_app/domain/auth/value_objects.dart';

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
