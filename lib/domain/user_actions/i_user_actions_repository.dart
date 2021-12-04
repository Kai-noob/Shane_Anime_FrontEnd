import 'package:dartz/dartz.dart';
import '../auth/user.dart';
import '../episodes/episodes.dart';
import 'comment.dart';
import 'user_actions_failure.dart';

abstract class IUserActionsRepository {
  Stream<Either<UserActionsFailure, AppUser>> fetchProfile(
      String currentUserId);
  Future<Option<UserActionsFailure>> likeComic(
      String currentUserId, Episodes episode);
  Stream<Either<UserActionsFailure, List<Comments>>> fetchComments(
      String episodeId);
  // Future<Either<UserActionsFailure, List<Comments>>> fetchComment(
  //     String episodeId);
  Stream<Either<UserActionsFailure, List<Comments>>> fetchUserComments(
      String userId);
  // Future<Either<UserActionsFailure, List<Comments>>> fetchUserComment(
  //     String userId);
  Future<Either<UserActionsFailure, Unit>> addComments(
      String userId, String comment, String episodeId);
  Future<Either<UserActionsFailure, Unit>> deleteComments(String commentId);
  Future<Option<UserActionsFailure>> editName(AppUser user);
  Future<Option<UserActionsFailure>> editImage(AppUser user);
  Stream<Either<UserActionsFailure, AppUser>> fetchCmmentProfile(String userId);
  // Future<Either<UserActionsFailure, AppUser>> fetchCmmentProfiles(
  //     String userId);
}
