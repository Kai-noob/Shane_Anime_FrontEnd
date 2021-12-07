// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      id: json['id'] as String,
      username: json['username'] as String,
      admin: json['admin'] as bool?,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'admin': instance.admin,
      'photoUrl': instance.photoUrl,
    };
