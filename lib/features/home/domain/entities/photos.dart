import 'package:equatable/equatable.dart';

class Photos extends Equatable {
  final List<dynamic> photos;

  Photos(this.photos);

  @override
  // TODO: implement props
  List<Object?> get props => [photos];
}
