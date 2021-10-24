import 'package:movie_app/features/home/domain/entities/episodes.dart';

class RecentEpisodeModel extends RecentEpisode {
  RecentEpisodeModel({
    required String comicId,
    required String episodeName,
    String? title,
    String? coverPhoto,
  }) : super(comicId, episodeName, title!, coverPhoto!);

  static RecentEpisodeModel fromJson(Map<String, dynamic> json) {
    return RecentEpisodeModel(
      comicId: json['comic_id'],
      episodeName: json['episode_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "comic_id": comicId,
      "episode_name": episodeName,
    };
  }
}
