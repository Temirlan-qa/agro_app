// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInDto _$SignInDtoFromJson(Map<String, dynamic> json) {
  return _SignInDto.fromJson(json);
}

/// @nodoc
mixin _$SignInDto {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInDtoCopyWith<SignInDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDtoCopyWith<$Res> {
  factory $SignInDtoCopyWith(SignInDto value, $Res Function(SignInDto) then) =
      _$SignInDtoCopyWithImpl<$Res, SignInDto>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$SignInDtoCopyWithImpl<$Res, $Val extends SignInDto>
    implements $SignInDtoCopyWith<$Res> {
  _$SignInDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInDtoImplCopyWith<$Res>
    implements $SignInDtoCopyWith<$Res> {
  factory _$$SignInDtoImplCopyWith(
          _$SignInDtoImpl value, $Res Function(_$SignInDtoImpl) then) =
      __$$SignInDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$SignInDtoImplCopyWithImpl<$Res>
    extends _$SignInDtoCopyWithImpl<$Res, _$SignInDtoImpl>
    implements _$$SignInDtoImplCopyWith<$Res> {
  __$$SignInDtoImplCopyWithImpl(
      _$SignInDtoImpl _value, $Res Function(_$SignInDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$SignInDtoImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDtoImpl implements _SignInDto {
  const _$SignInDtoImpl(
      {required this.accessToken, required this.refreshToken});

  factory _$SignInDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDtoImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'SignInDto(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDtoImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDtoImplCopyWith<_$SignInDtoImpl> get copyWith =>
      __$$SignInDtoImplCopyWithImpl<_$SignInDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDtoImplToJson(
      this,
    );
  }
}

abstract class _SignInDto implements SignInDto {
  const factory _SignInDto(
      {required final String accessToken,
      required final String refreshToken}) = _$SignInDtoImpl;

  factory _SignInDto.fromJson(Map<String, dynamic> json) =
      _$SignInDtoImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$SignInDtoImplCopyWith<_$SignInDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
