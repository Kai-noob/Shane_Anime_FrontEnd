import '../../domain/entities/photos.dart';

class PhotoModel extends Photos {
  PhotoModel({required List<dynamic> photos}) : super(photos);

  static PhotoModel fromSnapshot(Map<String, dynamic> snapshot) {
    return PhotoModel(photos: snapshot["photo_array"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "photo_array": photos,
    };
  }
}
