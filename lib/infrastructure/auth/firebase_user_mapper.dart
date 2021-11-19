import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:movie_app/domain/auth/user.dart';

extension FirebaseUserDomainX on auth.User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      photoUrl: photoURL ?? 'https://bit.ly/3yyK8ti',
      username: displayName!,
    );
  }
}
