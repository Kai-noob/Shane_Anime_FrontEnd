import 'package:freezed_annotation/freezed_annotation.dart';
import '../auth/user.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({required AppUser user}) = _Profile;
}
