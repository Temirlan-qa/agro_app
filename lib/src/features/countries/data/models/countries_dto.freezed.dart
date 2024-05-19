// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountriesDto _$CountriesDtoFromJson(Map<String, dynamic> json) {
  return _CountriesDto.fromJson(json);
}

/// @nodoc
mixin _$CountriesDto {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountriesDtoCopyWith<CountriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesDtoCopyWith<$Res> {
  factory $CountriesDtoCopyWith(
          CountriesDto value, $Res Function(CountriesDto) then) =
      _$CountriesDtoCopyWithImpl<$Res, CountriesDto>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$CountriesDtoCopyWithImpl<$Res, $Val extends CountriesDto>
    implements $CountriesDtoCopyWith<$Res> {
  _$CountriesDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$CountriesDtoImplCopyWith<$Res>
    implements $CountriesDtoCopyWith<$Res> {
  factory _$$CountriesDtoImplCopyWith(
          _$CountriesDtoImpl value, $Res Function(_$CountriesDtoImpl) then) =
      __$$CountriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$CountriesDtoImplCopyWithImpl<$Res>
    extends _$CountriesDtoCopyWithImpl<$Res, _$CountriesDtoImpl>
    implements _$$CountriesDtoImplCopyWith<$Res> {
  __$$CountriesDtoImplCopyWithImpl(
      _$CountriesDtoImpl _value, $Res Function(_$CountriesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$CountriesDtoImpl(
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
class _$CountriesDtoImpl implements _CountriesDto {
  _$CountriesDtoImpl({required this.code, required this.name});

  factory _$CountriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountriesDtoImplFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'CountriesDto(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesDtoImplCopyWith<_$CountriesDtoImpl> get copyWith =>
      __$$CountriesDtoImplCopyWithImpl<_$CountriesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountriesDtoImplToJson(
      this,
    );
  }
}

abstract class _CountriesDto implements CountriesDto {
  factory _CountriesDto(
      {required final String code,
      required final String name}) = _$CountriesDtoImpl;

  factory _CountriesDto.fromJson(Map<String, dynamic> json) =
      _$CountriesDtoImpl.fromJson;

  @override
  String get code;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CountriesDtoImplCopyWith<_$CountriesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
