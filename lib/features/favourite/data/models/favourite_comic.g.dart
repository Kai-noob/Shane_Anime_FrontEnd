// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_comic.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouriteComicAdapter extends TypeAdapter<FavouriteComic> {
  @override
  final int typeId = 0;

  @override
  FavouriteComic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouriteComic(
      fields[0] as int,
      fields[1] as String,
      fields[2] as String,
      fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, FavouriteComic obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.review)
      ..writeByte(2)
      ..write(obj.coverPhoto)
      ..writeByte(3)
      ..write(obj.editorChoice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteComicAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
