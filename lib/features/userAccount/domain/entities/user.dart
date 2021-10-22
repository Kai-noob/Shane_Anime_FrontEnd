import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userName;
  final String uid;

  final String email;

  const UserEntity(this.userName, this.uid, this.email);

  @override
  List<Object?> get props => [userName, uid, email];
}
