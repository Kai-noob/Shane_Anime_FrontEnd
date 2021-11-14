import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:movie_app/domain/auth/user.dart';
import 'package:movie_app/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on auth.User {
  AppUser toDomain() {
    return AppUser(id: UniqueId.fromUniqueString(uid));
  }
}
