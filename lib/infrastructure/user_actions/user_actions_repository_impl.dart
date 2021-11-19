import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/auth/user.dart';
import 'package:movie_app/domain/user_actions/i_user_actions_repository.dart';
import 'package:movie_app/domain/user_actions/user_actions_failure.dart';
import 'package:movie_app/domain/user_actions/profile.dart';

@LazySingleton(as: IUserActionsRepository)
class UserActionsRepositoryImpl implements IUserActionsRepository {
  final FirebaseFirestore _firestore;

  UserActionsRepositoryImpl(this._firestore);
  @override
  Future<Either<UserActionsFailure, Profile>> fetchProfile(
      String currentUserId) async {
    try {
      final userDoc =
          await _firestore.collection("users").doc(currentUserId).get();

      final userJson = userDoc.data() as Map<String, dynamic>;
      final userDomain = AppUser.fromJson(userJson);
      final profile = Profile(user: userDomain);

      return right(profile);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left(const UserActionsFailure.insufficientPermissions());
      } else if (e.code == 'not-found') {
        return left(const UserActionsFailure.notFound());
      } else {
        return left(const UserActionsFailure.unableToFetch());
      }
    }
  }
}
