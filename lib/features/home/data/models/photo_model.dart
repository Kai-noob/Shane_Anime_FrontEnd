import '../../domain/entities/photos.dart';

class PhotoModel extends Photos {
  PhotoModel({required List<dynamic> photos, required String pdfFile})
      : super(photos, pdfFile);

  static PhotoModel fromSnapshot(Map<String, dynamic> snapshot) {
    return PhotoModel(
        photos: snapshot["photo_array"] ?? [],
        pdfFile: snapshot['pdf_file'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {"photo_array": photos, 'pdf_file': pdfFile};
  }
}
