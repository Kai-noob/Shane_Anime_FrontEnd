// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_comic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveComics _$SaveComicsFromJson(Map<String, dynamic> json) {
  return _SaveComics.fromJson(json);
}

/// @nodoc
class _$SaveComicsTearOff {
  const _$SaveComicsTearOff();

  _SaveComics call({required String id}) {
    return _SaveComics(
      id: id,
    );
  }

  SaveComics fromJson(Map<String, Object?> json) {
    return SaveComics.fromJson(json);
  }
}

/// @nodoc
const $SaveComics = _$SaveComicsTearOff();

/// @nodoc
mixin _$SaveComics {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveComicsCopyWith<SaveComics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveComicsCopyWith<$Res> {
  factory $SaveComicsCopyWith(
          SaveComics value, $Res Function(SaveComics) then) =
      _$SaveComicsCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$SaveComicsCopyWithImpl<$Res> implements $SaveComicsCopyWith<$Res> {
  _$SaveComicsCopyWithImpl(this._value, this._then);

  final SaveComics _value;
  // ignore: unused_field
  final $Res Function(SaveComics) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SaveComicsCopyWith<$Res> implements $SaveComicsCopyWith<$Res> {
  factory _$SaveComicsCopyWith(
          _SaveComics value, $Res Function(_SaveComics) then) =
      __$SaveComicsCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$SaveComicsCopyWithImpl<$Res> extends _$SaveComicsCopyWithImpl<$Res>
    implements _$SaveComicsCopyWith<$Res> {
  __$SaveComicsCopyWithImpl(
      _SaveComics _value, $Res Function(_SaveComics) _then)
      : super(_value, (v) => _then(v as _SaveComics));

  @override
  _SaveComics get _value => super._value as _SaveComics;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SaveComics(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaveComics implements _SaveComics {
  const _$_SaveComics({required this.id});

  factory _$_SaveComics.fromJson(Map<String, dynamic> json) =>
      _$$_SaveComicsFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'SaveComics(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveComics &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SaveComicsCopyWith<_SaveComics> get copyWith =>
      __$SaveComicsCopyWithImpl<_SaveComics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveComicsToJson(this);
  }
}

abstract class _SaveComics implements SaveComics {
  const factory _SaveComics({required String id}) = _$_SaveComics;

  factory _SaveComics.fromJson(Map<String, dynamic> json) =
      _$_SaveComics.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$SaveComicsCopyWith<_SaveComics> get copyWith =>
      throw _privateConstructorUsedError;
}
