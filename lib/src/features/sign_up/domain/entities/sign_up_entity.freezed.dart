// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpEntity _$SignUpEntityFromJson(Map<String, dynamic> json) {
  return _SignUpEntity.fromJson(json);
}

/// @nodoc
mixin _$SignUpEntity {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpEntityCopyWith<SignUpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEntityCopyWith<$Res> {
  factory $SignUpEntityCopyWith(
          SignUpEntity value, $Res Function(SignUpEntity) then) =
      _$SignUpEntityCopyWithImpl<$Res, SignUpEntity>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$SignUpEntityCopyWithImpl<$Res, $Val extends SignUpEntity>
    implements $SignUpEntityCopyWith<$Res> {
  _$SignUpEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$SignUpEntityImplCopyWith<$Res>
    implements $SignUpEntityCopyWith<$Res> {
  factory _$$SignUpEntityImplCopyWith(
          _$SignUpEntityImpl value, $Res Function(_$SignUpEntityImpl) then) =
      __$$SignUpEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$SignUpEntityImplCopyWithImpl<$Res>
    extends _$SignUpEntityCopyWithImpl<$Res, _$SignUpEntityImpl>
    implements _$$SignUpEntityImplCopyWith<$Res> {
  __$$SignUpEntityImplCopyWithImpl(
      _$SignUpEntityImpl _value, $Res Function(_$SignUpEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$SignUpEntityImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpEntityImpl implements _SignUpEntity {
  _$SignUpEntityImpl({required this.description});

  factory _$SignUpEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpEntityImplFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'SignUpEntity(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEntityImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEntityImplCopyWith<_$SignUpEntityImpl> get copyWith =>
      __$$SignUpEntityImplCopyWithImpl<_$SignUpEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpEntityImplToJson(
      this,
    );
  }
}

abstract class _SignUpEntity implements SignUpEntity {
  factory _SignUpEntity({required final String description}) =
      _$SignUpEntityImpl;

  factory _SignUpEntity.fromJson(Map<String, dynamic> json) =
      _$SignUpEntityImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SignUpEntityImplCopyWith<_$SignUpEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
