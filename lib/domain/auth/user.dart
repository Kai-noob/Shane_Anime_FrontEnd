import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/auth/value_objects.dart';
import 'package:movie_app/domain/core/failures.dart';
import 'package:movie_app/domain/core/value_objects.dart';
import 'package:uuid/uuid.dart';

part 'user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueId id,
  }) = _AppUser;
}
