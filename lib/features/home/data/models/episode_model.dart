import '../../domain/entities/episodes.dart';

class EpisodeModel extends Episodes {
  EpisodeModel(
      {required String comicId,
      required String episodeName,
      required List<dynamic> episodes})
      : super(comicId, episodeName, episodes);

  static EpisodeModel fromJson(Map<String, dynamic> json) {
    return EpisodeModel(
        comicId: json['comic_id'],
        episodeName: json['episode_name'],
        episodes: json['photo_array']);
  }

  Map<String, dynamic> toJson() {
    return {
      "comic_id": comicId,
      "episode_name": episodeName,
      "photo_array": episodes,
    };
  }
}
