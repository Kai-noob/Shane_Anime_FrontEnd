// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Episodes _$$_EpisodesFromJson(Map<String, dynamic> json) => _$_Episodes(
      comicId: json['comic_id'] as String,
      episodeName: json['episode_name'] as String,
      episodeNumber: json['episode_number'] as int,
      pdfFile: json['pdf_file'] as String?,
      driveLink: json['drive_link'] as String?,
      like: Map<String, bool>.from(json['like'] as Map),
    );

Map<String, dynamic> _$$_EpisodesToJson(_$_Episodes instance) =>
    <String, dynamic>{
      'comic_id': instance.comicId,
      'episode_name': instance.episodeName,
      'episode_number': instance.episodeNumber,
      'pdf_file': instance.pdfFile,
      'drive_link': instance.driveLink,
      'like': instance.like,
    };
