// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaqDto _$FaqDtoFromJson(Map<String, dynamic> json) {
  return _FaqDto.fromJson(json);
}

/// @nodoc
mixin _$FaqDto {
  int get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqDtoCopyWith<FaqDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqDtoCopyWith<$Res> {
  factory $FaqDtoCopyWith(FaqDto value, $Res Function(FaqDto) then) =
      _$FaqDtoCopyWithImpl<$Res, FaqDto>;
  @useResult
  $Res call({int id, String question, String answer});
}

/// @nodoc
class _$FaqDtoCopyWithImpl<$Res, $Val extends FaqDto>
    implements $FaqDtoCopyWith<$Res> {
  _$FaqDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqDtoImplCopyWith<$Res> implements $FaqDtoCopyWith<$Res> {
  factory _$$FaqDtoImplCopyWith(
          _$FaqDtoImpl value, $Res Function(_$FaqDtoImpl) then) =
      __$$FaqDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String question, String answer});
}

/// @nodoc
class __$$FaqDtoImplCopyWithImpl<$Res>
    extends _$FaqDtoCopyWithImpl<$Res, _$FaqDtoImpl>
    implements _$$FaqDtoImplCopyWith<$Res> {
  __$$FaqDtoImplCopyWithImpl(
      _$FaqDtoImpl _value, $Res Function(_$FaqDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$FaqDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqDtoImpl implements _FaqDto {
  _$FaqDtoImpl(
      {required this.id, required this.question, required this.answer});

  factory _$FaqDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String question;
  @override
  final String answer;

  @override
  String toString() {
    return 'FaqDto(id: $id, question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqDtoImplCopyWith<_$FaqDtoImpl> get copyWith =>
      __$$FaqDtoImplCopyWithImpl<_$FaqDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqDtoImplToJson(
      this,
    );
  }
}

abstract class _FaqDto implements FaqDto {
  factory _FaqDto(
      {required final int id,
      required final String question,
      required final String answer}) = _$FaqDtoImpl;

  factory _FaqDto.fromJson(Map<String, dynamic> json) = _$FaqDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$FaqDtoImplCopyWith<_$FaqDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
