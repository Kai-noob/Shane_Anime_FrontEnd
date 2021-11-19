// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Episodes _$$_EpisodesFromJson(Map<String, dynamic> json) => _$_Episodes(
      comicId: json['comic_id'] as String,
      episodeName: json['episode_name'] as String,
      episodeNumber: json['episode_number'] as int,
    );

Map<String, dynamic> _$$_EpisodesToJson(_$_Episodes instance) =>
    <String, dynamic>{
      'comic_id': instance.comicId,
      'episode_name': instance.episodeName,
      'episode_number': instance.episodeNumber,
    };
