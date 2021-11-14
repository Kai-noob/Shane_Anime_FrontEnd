// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required String input}) {
    return InvalidEmail<T>(
      input: input,
    );
  }

  ShortPassword<T> shortPassword<T>({required String input}) {
    return ShortPassword<T>(
      input: input,
    );
  }

  EmailRequired<T> emailRequired<T>({required String input}) {
    return EmailRequired<T>(
      input: input,
    );
  }

  PasswordRequired<T> passwordRequired<T>({required String input}) {
    return PasswordRequired<T>(
      input: input,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  String get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) emailRequired,
    required TResult Function(String input) passwordRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailRequired<T> value) emailRequired,
    required TResult Function(PasswordRequired<T> value) passwordRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String input});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(InvalidEmail<T>(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) emailRequired,
    required TResult Function(String input) passwordRequired,
  }) {
    return invalidEmail(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
  }) {
    return invalidEmail?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailRequired<T> value) emailRequired,
    required TResult Function(PasswordRequired<T> value) passwordRequired,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required String input}) = _$InvalidEmail<T>;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(ShortPassword<T>(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) emailRequired,
    required TResult Function(String input) passwordRequired,
  }) {
    return shortPassword(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
  }) {
    return shortPassword?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailRequired<T> value) emailRequired,
    required TResult Function(PasswordRequired<T> value) passwordRequired,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required String input}) = _$ShortPassword<T>;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailRequiredCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmailRequiredCopyWith(
          EmailRequired<T> value, $Res Function(EmailRequired<T>) then) =
      _$EmailRequiredCopyWithImpl<T, $Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$EmailRequiredCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmailRequiredCopyWith<T, $Res> {
  _$EmailRequiredCopyWithImpl(
      EmailRequired<T> _value, $Res Function(EmailRequired<T>) _then)
      : super(_value, (v) => _then(v as EmailRequired<T>));

  @override
  EmailRequired<T> get _value => super._value as EmailRequired<T>;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(EmailRequired<T>(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailRequired<T> implements EmailRequired<T> {
  const _$EmailRequired({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'ValueFailure<$T>.emailRequired(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailRequired<T> &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  $EmailRequiredCopyWith<T, EmailRequired<T>> get copyWith =>
      _$EmailRequiredCopyWithImpl<T, EmailRequired<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) emailRequired,
    required TResult Function(String input) passwordRequired,
  }) {
    return emailRequired(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
  }) {
    return emailRequired?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
    required TResult orElse(),
  }) {
    if (emailRequired != null) {
      return emailRequired(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailRequired<T> value) emailRequired,
    required TResult Function(PasswordRequired<T> value) passwordRequired,
  }) {
    return emailRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
  }) {
    return emailRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
    required TResult orElse(),
  }) {
    if (emailRequired != null) {
      return emailRequired(this);
    }
    return orElse();
  }
}

abstract class EmailRequired<T> implements ValueFailure<T> {
  const factory EmailRequired({required String input}) = _$EmailRequired<T>;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  $EmailRequiredCopyWith<T, EmailRequired<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRequiredCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $PasswordRequiredCopyWith(
          PasswordRequired<T> value, $Res Function(PasswordRequired<T>) then) =
      _$PasswordRequiredCopyWithImpl<T, $Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class _$PasswordRequiredCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PasswordRequiredCopyWith<T, $Res> {
  _$PasswordRequiredCopyWithImpl(
      PasswordRequired<T> _value, $Res Function(PasswordRequired<T>) _then)
      : super(_value, (v) => _then(v as PasswordRequired<T>));

  @override
  PasswordRequired<T> get _value => super._value as PasswordRequired<T>;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(PasswordRequired<T>(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordRequired<T> implements PasswordRequired<T> {
  const _$PasswordRequired({required this.input});

  @override
  final String input;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordRequired(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordRequired<T> &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  $PasswordRequiredCopyWith<T, PasswordRequired<T>> get copyWith =>
      _$PasswordRequiredCopyWithImpl<T, PasswordRequired<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) invalidEmail,
    required TResult Function(String input) shortPassword,
    required TResult Function(String input) emailRequired,
    required TResult Function(String input) passwordRequired,
  }) {
    return passwordRequired(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
  }) {
    return passwordRequired?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? invalidEmail,
    TResult Function(String input)? shortPassword,
    TResult Function(String input)? emailRequired,
    TResult Function(String input)? passwordRequired,
    required TResult orElse(),
  }) {
    if (passwordRequired != null) {
      return passwordRequired(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailRequired<T> value) emailRequired,
    required TResult Function(PasswordRequired<T> value) passwordRequired,
  }) {
    return passwordRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
  }) {
    return passwordRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailRequired<T> value)? emailRequired,
    TResult Function(PasswordRequired<T> value)? passwordRequired,
    required TResult orElse(),
  }) {
    if (passwordRequired != null) {
      return passwordRequired(this);
    }
    return orElse();
  }
}

abstract class PasswordRequired<T> implements ValueFailure<T> {
  const factory PasswordRequired({required String input}) =
      _$PasswordRequired<T>;

  @override
  String get input;
  @override
  @JsonKey(ignore: true)
  $PasswordRequiredCopyWith<T, PasswordRequired<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
