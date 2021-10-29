import '../../domain/entities/episodes.dart';

class EpisodeModel extends Episode {
  EpisodeModel(
      {required String comicId,
      required String episodeName,
      String? title,
      String? coverPhoto,
      required int episodeNumber})
      : super(comicId, episodeName, title!, coverPhoto!, episodeNumber);

  static EpisodeModel fromJson(Map<String, dynamic> json) {
    return EpisodeModel(
        comicId: json['comic_id'],
        episodeName: json['episode_name'],
        episodeNumber: json['episode_number']);
  }

  Map<String, dynamic> toJson() {
    return {
      "comic_id": comicId,
      "episode_name": episodeName,
    };
  }
}
