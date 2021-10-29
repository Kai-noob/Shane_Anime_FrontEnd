import 'package:equatable/equatable.dart';

class Episode extends Equatable {
  final String comicId;
  final String episodeName;
  final String title;
  final String coverPhoto;
  final int episodeNumber;

  const Episode(this.comicId, this.episodeName, this.title, this.coverPhoto,
      this.episodeNumber);

  @override
  List<Object?> get props =>
      [comicId, episodeName, title, coverPhoto, episodeNumber];
}
