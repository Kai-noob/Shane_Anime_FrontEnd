// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SigninEventTearOff {
  const _$SigninEventTearOff();

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }

  SignInWithFacebook signInWithFacebook() {
    return const SignInWithFacebook();
  }
}

/// @nodoc
const $SigninEvent = _$SigninEventTearOff();

/// @nodoc
mixin _$SigninEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithFacebook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithFacebook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res> implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

  final SigninEvent _value;
  // ignore: unused_field
  final $Res Function(SigninEvent) _then;
}

/// @nodoc
abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'SigninEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithFacebook,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithFacebook,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithFacebook,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SigninEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
abstract class $SignInWithFacebookCopyWith<$Res> {
  factory $SignInWithFacebookCopyWith(
          SignInWithFacebook value, $Res Function(SignInWithFacebook) then) =
      _$SignInWithFacebookCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithFacebookCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res>
    implements $SignInWithFacebookCopyWith<$Res> {
  _$SignInWithFacebookCopyWithImpl(
      SignInWithFacebook _value, $Res Function(SignInWithFacebook) _then)
      : super(_value, (v) => _then(v as SignInWithFacebook));

  @override
  SignInWithFacebook get _value => super._value as SignInWithFacebook;
}

/// @nodoc

class _$SignInWithFacebook implements SignInWithFacebook {
  const _$SignInWithFacebook();

  @override
  String toString() {
    return 'SigninEvent.signInWithFacebook()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithFacebook,
  }) {
    return signInWithFacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
  }) {
    return signInWithFacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithFacebook,
    required TResult orElse(),
  }) {
    if (signInWithFacebook != null) {
      return signInWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithFacebook,
  }) {
    return signInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithFacebook,
  }) {
    return signInWithFacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithFacebook,
    required TResult orElse(),
  }) {
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebook implements SigninEvent {
  const factory SignInWithFacebook() = _$SignInWithFacebook;
}

/// @nodoc
class _$SigninStateTearOff {
  const _$SigninStateTearOff();

  _SigninState call(
      {required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SigninState(
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SigninState = _$SigninStateTearOff();

/// @nodoc
mixin _$SigninState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res> implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  final SigninState _value;
  // ignore: unused_field
  final $Res Function(SigninState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SigninStateCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$SigninStateCopyWith(
          _SigninState value, $Res Function(_SigninState) then) =
      __$SigninStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SigninStateCopyWithImpl<$Res> extends _$SigninStateCopyWithImpl<$Res>
    implements _$SigninStateCopyWith<$Res> {
  __$SigninStateCopyWithImpl(
      _SigninState _value, $Res Function(_SigninState) _then)
      : super(_value, (v) => _then(v as _SigninState));

  @override
  _SigninState get _value => super._value as _SigninState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SigninState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SigninState implements _SigninState {
  const _$_SigninState(
      {required this.isSubmitting, required this.authFailureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SigninState(isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SigninState &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SigninStateCopyWith<_SigninState> get copyWith =>
      __$SigninStateCopyWithImpl<_SigninState>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
      {required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SigninState;

  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SigninStateCopyWith<_SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}
