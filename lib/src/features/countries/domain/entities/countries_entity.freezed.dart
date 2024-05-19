// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountriesEntity _$CountriesEntityFromJson(Map<String, dynamic> json) {
  return _CountriesEntity.fromJson(json);
}

/// @nodoc
mixin _$CountriesEntity {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesEntityCopyWith<CountriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesEntityCopyWith<$Res> {
  factory $CountriesEntityCopyWith(
          CountriesEntity value, $Res Function(CountriesEntity) then) =
      _$CountriesEntityCopyWithImpl<$Res, CountriesEntity>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$CountriesEntityCopyWithImpl<$Res, $Val extends CountriesEntity>
    implements $CountriesEntityCopyWith<$Res> {
  _$CountriesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesEntityImplCopyWith<$Res>
    implements $CountriesEntityCopyWith<$Res> {
  factory _$$CountriesEntityImplCopyWith(_$CountriesEntityImpl value,
          $Res Function(_$CountriesEntityImpl) then) =
      __$$CountriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$CountriesEntityImplCopyWithImpl<$Res>
    extends _$CountriesEntityCopyWithImpl<$Res, _$CountriesEntityImpl>
    implements _$$CountriesEntityImplCopyWith<$Res> {
  __$$CountriesEntityImplCopyWithImpl(
      _$CountriesEntityImpl _value, $Res Function(_$CountriesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$CountriesEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountriesEntityImpl implements _CountriesEntity {
  _$CountriesEntityImpl({required this.code, required this.name});

  factory _$CountriesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesEntityImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'CountriesEntity(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesEntityImplCopyWith<_$CountriesEntityImpl> get copyWith =>
      __$$CountriesEntityImplCopyWithImpl<_$CountriesEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesEntityImplToJson(
      this,
    );
  }
}

abstract class _CountriesEntity implements CountriesEntity {
  factory _CountriesEntity(
      {required final String code,
      required final String name}) = _$CountriesEntityImpl;

  factory _CountriesEntity.fromJson(Map<String, dynamic> json) =
      _$CountriesEntityImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CountriesEntityImplCopyWith<_$CountriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
