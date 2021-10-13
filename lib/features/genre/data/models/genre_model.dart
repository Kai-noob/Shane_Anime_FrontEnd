import 'package:movie_app/features/genre/domain/entities/genre.dart';

class GenreModel extends Genre {
  GenreModel({String? id, required String name, required String image})
      : super(id!, name, image);

  static GenreModel fromJson(Map<String, dynamic> json) {
    return GenreModel(name: json['name'], image: json['image']);
  }

  Map<String, dynamic> toJson() {
    return {"name": name, "image": image};
  }
}
