// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comic _$$_ComicFromJson(Map<String, dynamic> json) => _$_Comic(
      id: json['id'] as String,
      title: json['title'] as String,
      coverPhoto: json['coverPhoto'] as String,
      review: json['review'] as String,
      editorChoice: json['editorChoice'] as bool,
      published: json['published'] as bool,
      completed: json['completed'] as bool,
      created:
          const TimestampConverter().fromJson(json['created'] as Timestamp),
    );

Map<String, dynamic> _$$_ComicToJson(_$_Comic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'coverPhoto': instance.coverPhoto,
      'review': instance.review,
      'editorChoice': instance.editorChoice,
      'published': instance.published,
      'completed': instance.completed,
      'created': const TimestampConverter().toJson(instance.created),
    };
