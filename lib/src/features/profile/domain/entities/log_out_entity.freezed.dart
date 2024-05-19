// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_out_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogOutEntity _$LogOutEntityFromJson(Map<String, dynamic> json) {
  return _LogOutEntity.fromJson(json);
}

/// @nodoc
mixin _$LogOutEntity {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogOutEntityCopyWith<LogOutEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogOutEntityCopyWith<$Res> {
  factory $LogOutEntityCopyWith(
          LogOutEntity value, $Res Function(LogOutEntity) then) =
      _$LogOutEntityCopyWithImpl<$Res, LogOutEntity>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$LogOutEntityCopyWithImpl<$Res, $Val extends LogOutEntity>
    implements $LogOutEntityCopyWith<$Res> {
  _$LogOutEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$LogOutEntityImplCopyWith<$Res>
    implements $LogOutEntityCopyWith<$Res> {
  factory _$$LogOutEntityImplCopyWith(
          _$LogOutEntityImpl value, $Res Function(_$LogOutEntityImpl) then) =
      __$$LogOutEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$LogOutEntityImplCopyWithImpl<$Res>
    extends _$LogOutEntityCopyWithImpl<$Res, _$LogOutEntityImpl>
    implements _$$LogOutEntityImplCopyWith<$Res> {
  __$$LogOutEntityImplCopyWithImpl(
      _$LogOutEntityImpl _value, $Res Function(_$LogOutEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$LogOutEntityImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogOutEntityImpl implements _LogOutEntity {
  _$LogOutEntityImpl({required this.description});

  factory _$LogOutEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogOutEntityImplFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'LogOutEntity(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutEntityImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutEntityImplCopyWith<_$LogOutEntityImpl> get copyWith =>
      __$$LogOutEntityImplCopyWithImpl<_$LogOutEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogOutEntityImplToJson(
      this,
    );
  }
}

abstract class _LogOutEntity implements LogOutEntity {
  factory _LogOutEntity({required final String description}) =
      _$LogOutEntityImpl;

  factory _LogOutEntity.fromJson(Map<String, dynamic> json) =
      _$LogOutEntityImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$LogOutEntityImplCopyWith<_$LogOutEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
