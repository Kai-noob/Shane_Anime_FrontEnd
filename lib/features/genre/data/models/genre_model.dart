import '../../domain/entities/genre.dart';

class GenreModel extends Genre {
  GenreModel({String? id, required String name, required String icon})
      : super(id!, name, icon);

  static GenreModel fromJson(Map<String, dynamic> json) {
    return GenreModel(name: json['name'], icon: json['icon']);
  }

  Map<String, dynamic> toJson() {
    return {"name": name};
  }
}
