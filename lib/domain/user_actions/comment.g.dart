// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comments _$$_CommentsFromJson(Map<String, dynamic> json) => _$_Comments(
      comment: json['comment'] as String,
      timestamp:
          const TimestampConverter().fromJson(json['timestamp'] as Timestamp),
      episodeId: json['episodeId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_CommentsToJson(_$_Comments instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
      'episodeId': instance.episodeId,
      'userId': instance.userId,
    };
