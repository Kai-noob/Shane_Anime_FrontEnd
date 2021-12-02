// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Upcomingcomic _$$_UpcomingcomicFromJson(Map<String, dynamic> json) =>
    _$_Upcomingcomic(
      title: json['title'] as String,
      coverPhoto: json['cover_photo'] as String,
      review: json['review'] as String,
      episodeNumber: json['episode_number'] as String,
      releaseDate: json['release_date'] as String,
    );

Map<String, dynamic> _$$_UpcomingcomicToJson(_$_Upcomingcomic instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cover_photo': instance.coverPhoto,
      'review': instance.review,
      'episode_number': instance.episodeNumber,
      'release_date': instance.releaseDate,
    };
