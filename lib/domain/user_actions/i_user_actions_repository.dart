import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/user_actions/profile.dart';
import 'package:movie_app/domain/user_actions/user_actions_failure.dart';

abstract class IUserActionsRepository {
  Future<Either<UserActionsFailure, Profile>> fetchProfile(
      String currentUserId);
}
