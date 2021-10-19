import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String uid;

  final String email;

  UserEntity(this.uid, this.email);

  @override
  // TODO: implement props
  List<Object?> get props => [uid, email];
}
