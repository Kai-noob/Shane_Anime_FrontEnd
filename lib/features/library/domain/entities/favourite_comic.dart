import 'package:equatable/equatable.dart';

class FavouriteComic extends Equatable {
  final String id;
  final String title;
  final String coverPhoto;

  const FavouriteComic(this.id, this.title, this.coverPhoto);

  @override
  List<Object?> get props => [
        id,
        title,
        coverPhoto,
      ];
}
