import '../../domain/entities/auth.dart';

class AuthModel extends Auth {
  AuthModel({required String email, required String password})
      : super(email, password);
}
