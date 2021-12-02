import 'package:firebase_auth/firebase_auth.dart' as auth;
import '../../domain/auth/user.dart';

extension FirebaseUserDomainX on auth.User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      photoUrl: photoURL!,
      username: displayName!,
    );
  }
}
