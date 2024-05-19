// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) {
  return _SignUpDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpDto {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpDtoCopyWith<SignUpDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDtoCopyWith<$Res> {
  factory $SignUpDtoCopyWith(SignUpDto value, $Res Function(SignUpDto) then) =
      _$SignUpDtoCopyWithImpl<$Res, SignUpDto>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$SignUpDtoCopyWithImpl<$Res, $Val extends SignUpDto>
    implements $SignUpDtoCopyWith<$Res> {
  _$SignUpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpDtoImplCopyWith<$Res>
    implements $SignUpDtoCopyWith<$Res> {
  factory _$$SignUpDtoImplCopyWith(
          _$SignUpDtoImpl value, $Res Function(_$SignUpDtoImpl) then) =
      __$$SignUpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$SignUpDtoImplCopyWithImpl<$Res>
    extends _$SignUpDtoCopyWithImpl<$Res, _$SignUpDtoImpl>
    implements _$$SignUpDtoImplCopyWith<$Res> {
  __$$SignUpDtoImplCopyWithImpl(
      _$SignUpDtoImpl _value, $Res Function(_$SignUpDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$SignUpDtoImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpDtoImpl implements _SignUpDto {
  const _$SignUpDtoImpl({required this.description});

  factory _$SignUpDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpDtoImplFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'SignUpDto(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpDtoImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpDtoImplCopyWith<_$SignUpDtoImpl> get copyWith =>
      __$$SignUpDtoImplCopyWithImpl<_$SignUpDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpDtoImplToJson(
      this,
    );
  }
}

abstract class _SignUpDto implements SignUpDto {
  const factory _SignUpDto({required final String description}) =
      _$SignUpDtoImpl;

  factory _SignUpDto.fromJson(Map<String, dynamic> json) =
      _$SignUpDtoImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SignUpDtoImplCopyWith<_$SignUpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
