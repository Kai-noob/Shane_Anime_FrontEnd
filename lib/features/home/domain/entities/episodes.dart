import 'package:equatable/equatable.dart';

class Episodes extends Equatable {
  final String comicId;
  final String episodeName;
  final List<dynamic> episodes;

  Episodes(this.comicId, this.episodeName, this.episodes);

  @override
  // TODO: implement props
  List<Object?> get props => [comicId, episodeName, episodes];
}
