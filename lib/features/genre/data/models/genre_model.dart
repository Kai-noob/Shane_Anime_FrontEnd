import '../../domain/entities/genre.dart';

class GenreModel extends Genre {
  GenreModel({String? id, required String name}) : super(id!, name);

  static GenreModel fromJson(Map<String, dynamic> json) {
    return GenreModel(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {"name": name};
  }
}
