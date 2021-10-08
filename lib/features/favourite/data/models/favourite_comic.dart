import 'package:hive/hive.dart';

part 'favourite_comic.g.dart';

@HiveType(typeId: 0)
class FavouriteComic {
  @HiveField(0)
  final int title;
  @HiveField(1)
  final String review;
  @HiveField(2)
  final String coverPhoto;
  @HiveField(3)
  final bool editorChoice;

  FavouriteComic(this.title, this.review, this.coverPhoto, this.editorChoice);
}
