import 'package:dartz/dartz.dart';
import 'auth_failures.dart';
import 'user.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithFacebook();

  Future<void> signOut();
}
