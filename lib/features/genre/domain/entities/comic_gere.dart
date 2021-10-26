import 'package:equatable/equatable.dart';

class ComicGenre extends Equatable {
  final String comicId;
  final String genreId;

  const ComicGenre(this.comicId, this.genreId);

  @override
  List<Object?> get props => [comicId, genreId];
}
