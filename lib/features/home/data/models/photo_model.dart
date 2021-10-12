import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:movie_app/features/home/domain/entities/photos.dart';

class PhotoModel extends Photos {
  PhotoModel(
      {required String comicId,
      required String episodeName,
      required List<dynamic> photos})
      : super(comicId, episodeName, photos);

  static PhotoModel fromSnapshot(Map<String, dynamic> snapshot) {
    return PhotoModel(
        comicId: snapshot["comic_id"],
        episodeName: snapshot["episode_name"],
        photos: snapshot["photo_array"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "comic_id": comicId,
      "episode_name": episodeName,
      "photo_array": photos,
    };
  }
}
