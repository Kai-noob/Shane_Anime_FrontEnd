import 'package:equatable/equatable.dart';

class RecentEpisode extends Equatable {
  final String comicId;
  final String episodeName;
  final String title;
  final String coverPhoto;

  RecentEpisode(this.comicId, this.episodeName, this.title, this.coverPhoto);

  @override
  // TODO: implement props
  List<Object?> get props => [comicId, episodeName, title, coverPhoto];
}
