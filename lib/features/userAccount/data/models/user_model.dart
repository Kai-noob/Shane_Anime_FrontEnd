import '../../domain/entities/user.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required String userName, required String uid, required String email})
      : super(userName, uid, email);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['userName'],
      uid: json['uid'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'email': email, 'id': uid};
  }
}
