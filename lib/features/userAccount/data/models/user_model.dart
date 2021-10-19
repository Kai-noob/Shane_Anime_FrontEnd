import 'package:movie_app/features/userAccount/domain/entities/user.dart';

class UserModel extends UserEntity {
  UserModel({required String uid, required String email}) : super(uid, email);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'id': uid};
  }
}
