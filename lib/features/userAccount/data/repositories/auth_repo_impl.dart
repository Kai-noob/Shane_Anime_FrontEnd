import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/features/userAccount/data/datasources/auth_data_source.dart';
import 'package:movie_app/features/userAccount/domain/repositories/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource authDataSource;

  AuthRepoImpl({required this.authDataSource});
  @override
  Future<void> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<UserCredential> signUp(String email, String password) {
    return authDataSource.signUp(email, password);
  }

  @override
  Future<void> saveUser(String userName, String email, User user) {
    return authDataSource.saveUser(userName, email, user);
  }
}
