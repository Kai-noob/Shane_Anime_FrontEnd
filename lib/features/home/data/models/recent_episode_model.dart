import '../../domain/entities/episodes.dart';

class EpisodeModel extends Episode {
  EpisodeModel({
    required String comicId,
    required String episodeName,
    String? title,
    String? coverPhoto,
  }) : super(comicId, episodeName, title!, coverPhoto!);

  static EpisodeModel fromJson(Map<String, dynamic> json) {
    return EpisodeModel(
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
