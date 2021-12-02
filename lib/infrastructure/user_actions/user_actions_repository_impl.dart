import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/user.dart';
import '../../domain/episodes/episodes.dart';
import '../../domain/user_actions/comment.dart';
import '../../domain/user_actions/i_user_actions_repository.dart';
import '../../domain/user_actions/user_actions_failure.dart';

@LazySingleton(as: IUserActionsRepository)
class UserActionsRepositoryImpl implements IUserActionsRepository {
  final FirebaseFirestore _firestore;

  UserActionsRepositoryImpl(this._firestore);
  @override
  Stream<Either<UserActionsFailure, AppUser>> fetchProfile(
      String currentUserId) async* {
    yield* _firestore
        .collection("users")
        .doc(currentUserId)
        .snapshots()
        .map(
          (snapshot) => right<UserActionsFailure, AppUser>(
              AppUser.fromJson(snapshot.data() as Map<String, dynamic>)),
        )
        .handleError((e, _) {
      if (e is FirebaseException) {
        if (e.code == 'permission-denied') {
          return left(const UserActionsFailure.insufficientPermissions());
        } else if (e.code == 'not-found') {
          return left(const UserActionsFailure.notFound());
        } else {
          return left(const UserActionsFailure.unableToFetch());
        }
      } else {
        return left(const UserActionsFailure.unableToFetch());
      }
    });
  }

  @override
  Future<Option<UserActionsFailure>> likeComic(
      String currentUserId, Episodes episode) async {
    try {
      await _firestore
          .collection("episodes")
          .doc(episode.id!)
          .update(episode.toJson());
      return none();
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return some(const UserActionsFailure.insufficientPermissions());
      } else if (e.code == 'not-found') {
        return some(const UserActionsFailure.notFound());
      } else {
        return some(const UserActionsFailure.unableToFetch());
      }
    }
  }

  @override
  Stream<Either<UserActionsFailure, List<Comments>>> fetchComments(
      String episodeId) async* {
    yield* _firestore
        .collection("comments")
        .orderBy("timestamp", descending: true)
        .where("episodeId", isEqualTo: episodeId)
        .snapshots()
        .map(
          (snapshot) => right<UserActionsFailure, List<Comments>>(
            snapshot.docs.map((doc) {
              return Comments.fromJson(doc.data()).copyWith(commentId: doc.id);
            }).toList(),
          ),
        )
        .handleError((e, _) {
      if (e is FirebaseException) {
        if (e.code == 'permission-denied') {
          return left(const UserActionsFailure.insufficientPermissions());
        } else if (e.code == 'not-found') {
          return left(const UserActionsFailure.notFound());
        } else {
          return left(const UserActionsFailure.unableToFetch());
        }
      } else {
        return left(const UserActionsFailure.unableToFetch());
      }
    });
  }

  @override
  Future<Option<UserActionsFailure>> editName(AppUser user) async {
    try {
      await _firestore.collection("users").doc(user.id).update(user.toJson());
      return none();
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return some(const UserActionsFailure.insufficientPermissions());
      } else if (e.code == 'not-found') {
        return some(const UserActionsFailure.notFound());
      } else {
        return some(const UserActionsFailure.unableToFetch());
      }
    }
  }

  @override
  Stream<Either<UserActionsFailure, List<Comments>>> fetchUserComments(
      String userId) async* {
    yield* _firestore
        .collection("comments")
        .orderBy("timestamp", descending: true)
        .where("userId", isEqualTo: userId)
        .snapshots()
        .map(
          (snapshot) => right<UserActionsFailure, List<Comments>>(
            snapshot.docs.map((doc) {
              return Comments.fromJson(doc.data()).copyWith(commentId: doc.id);
            }).toList(),
          ),
        )
        .handleError((e, _) {
      if (e is FirebaseException) {
        if (e.code == 'permission-denied') {
          return left(const UserActionsFailure.insufficientPermissions());
        } else if (e.code == 'not-found') {
          return left(const UserActionsFailure.notFound());
        } else {
          return left(const UserActionsFailure.unableToFetch());
        }
      } else {
        return left(const UserActionsFailure.unableToFetch());
      }
    });
  }

  @override
  Future<Either<UserActionsFailure, Unit>> deleteComments(
      String commentId) async {
    try {
      final commentDoc = _firestore.collection("comments").doc(commentId);
      await commentDoc.delete();
      return right(unit);
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

  @override
  Stream<Either<UserActionsFailure, AppUser>> fetchCmmentProfile(
      String userId) async* {
    yield* _firestore
        .collection("users")
        .doc(userId)
        .snapshots()
        .map(
          (snapshot) => right<UserActionsFailure, AppUser>(
              AppUser.fromJson(snapshot.data() as Map<String, dynamic>)),
        )
        .handleError((e, _) {
      if (e is FirebaseException) {
        if (e.code == 'permission-denied') {
          return left(const UserActionsFailure.insufficientPermissions());
        } else if (e.code == 'not-found') {
          return left(const UserActionsFailure.notFound());
        } else {
          return left(const UserActionsFailure.unableToFetch());
        }
      } else {
        return left(const UserActionsFailure.unableToFetch());
      }
    });
  }

  @override
  Future<Option<UserActionsFailure>> editImage(AppUser user) async {
    try {
      await _firestore.collection("users").doc(user.id).update(user.toJson());
      return none();
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return some(const UserActionsFailure.insufficientPermissions());
      } else if (e.code == 'not-found') {
        return some(const UserActionsFailure.notFound());
      } else {
        return some(const UserActionsFailure.unableToFetch());
      }
    }
  }
}
