import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';

import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> usersDoc() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection("users").doc(user.id);
  }

  Future<DocumentReference> saveComicDoc(String comicId) async {
    final userDoc = await usersDoc();

    return userDoc.collection('saved').doc(comicId);
  }
}
