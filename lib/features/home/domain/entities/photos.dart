import 'package:equatable/equatable.dart';

class Photos extends Equatable {
  final List<dynamic> photos;
  final String pdfFile;

  Photos(this.photos, this.pdfFile);

  @override
  // TODO: implement props
  List<Object?> get props => [photos, pdfFile];
}
