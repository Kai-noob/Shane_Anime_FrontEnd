import 'package:firebase_auth/firebase_auth.dart' as auth;
import '../../domain/auth/user.dart';

extension FirebaseUserDomainX on auth.User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      admin: false,
      photoUrl: photoURL!,
      username: displayName!,
    );
  }
}
