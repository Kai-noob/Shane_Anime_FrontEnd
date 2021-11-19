// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      title: json['title'] as String,
      coverPhoto: json['cover_photo'] as String,
      review: json['review'] as String,
      editorChoice: json['editor_choice'] as bool,
      published: json['published'] as bool,
      completed: json['completed'] as bool,
      created:
          const TimestampConverter().fromJson(json['created'] as Timestamp),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'title': instance.title,
      'cover_photo': instance.coverPhoto,
      'review': instance.review,
      'editor_choice': instance.editorChoice,
      'published': instance.published,
      'completed': instance.completed,
      'created': const TimestampConverter().toJson(instance.created),
    };
