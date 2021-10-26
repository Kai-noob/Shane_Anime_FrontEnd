import 'package:equatable/equatable.dart';

class Episode extends Equatable {
  final String comicId;
  final String episodeName;
  final String title;
  final String coverPhoto;

  const Episode(this.comicId, this.episodeName, this.title, this.coverPhoto);

  @override
  List<Object?> get props => [comicId, episodeName, title, coverPhoto];
}
