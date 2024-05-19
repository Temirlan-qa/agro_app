// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationEntity _$PaginationEntityFromJson(Map<String, dynamic> json) {
  return _PaginationEntity.fromJson(json);
}

/// @nodoc
mixin _$PaginationEntity {
  int? get totalSum => throw _privateConstructorUsedError;
  bool get local => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get totalElementsOnPage => throw _privateConstructorUsedError;
  int get elementsSize => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationEntityCopyWith<PaginationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationEntityCopyWith<$Res> {
  factory $PaginationEntityCopyWith(
          PaginationEntity value, $Res Function(PaginationEntity) then) =
      _$PaginationEntityCopyWithImpl<$Res, PaginationEntity>;
  @useResult
  $Res call(
      {int? totalSum,
      bool local,
      int page,
      int size,
      bool hasNext,
      int totalPage,
      int totalElementsOnPage,
      int elementsSize,
      List<dynamic> data});
}

/// @nodoc
class _$PaginationEntityCopyWithImpl<$Res, $Val extends PaginationEntity>
    implements $PaginationEntityCopyWith<$Res> {
  _$PaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSum = freezed,
    Object? local = null,
    Object? page = null,
    Object? size = null,
    Object? hasNext = null,
    Object? totalPage = null,
    Object? totalElementsOnPage = null,
    Object? elementsSize = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      totalSum: freezed == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as int?,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalElementsOnPage: null == totalElementsOnPage
          ? _value.totalElementsOnPage
          : totalElementsOnPage // ignore: cast_nullable_to_non_nullable
              as int,
      elementsSize: null == elementsSize
          ? _value.elementsSize
          : elementsSize // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationEntityImplCopyWith<$Res>
    implements $PaginationEntityCopyWith<$Res> {
  factory _$$PaginationEntityImplCopyWith(_$PaginationEntityImpl value,
          $Res Function(_$PaginationEntityImpl) then) =
      __$$PaginationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalSum,
      bool local,
      int page,
      int size,
      bool hasNext,
      int totalPage,
      int totalElementsOnPage,
      int elementsSize,
      List<dynamic> data});
}

/// @nodoc
class __$$PaginationEntityImplCopyWithImpl<$Res>
    extends _$PaginationEntityCopyWithImpl<$Res, _$PaginationEntityImpl>
    implements _$$PaginationEntityImplCopyWith<$Res> {
  __$$PaginationEntityImplCopyWithImpl(_$PaginationEntityImpl _value,
      $Res Function(_$PaginationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSum = freezed,
    Object? local = null,
    Object? page = null,
    Object? size = null,
    Object? hasNext = null,
    Object? totalPage = null,
    Object? totalElementsOnPage = null,
    Object? elementsSize = null,
    Object? data = null,
  }) {
    return _then(_$PaginationEntityImpl(
      totalSum: freezed == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as int?,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      hasNext: null == hasNext
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalElementsOnPage: null == totalElementsOnPage
          ? _value.totalElementsOnPage
          : totalElementsOnPage // ignore: cast_nullable_to_non_nullable
              as int,
      elementsSize: null == elementsSize
          ? _value.elementsSize
          : elementsSize // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationEntityImpl implements _PaginationEntity {
  _$PaginationEntityImpl(
      {this.totalSum,
      this.local = false,
      required this.page,
      required this.size,
      required this.hasNext,
      required this.totalPage,
      required this.totalElementsOnPage,
      required this.elementsSize,
      required final List<dynamic> data})
      : _data = data;

  factory _$PaginationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationEntityImplFromJson(json);

  @override
  final int? totalSum;
  @override
  @JsonKey()
  final bool local;
  @override
  final int page;
  @override
  final int size;
  @override
  final bool hasNext;
  @override
  final int totalPage;
  @override
  final int totalElementsOnPage;
  @override
  final int elementsSize;
  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginationEntity(totalSum: $totalSum, local: $local, page: $page, size: $size, hasNext: $hasNext, totalPage: $totalPage, totalElementsOnPage: $totalElementsOnPage, elementsSize: $elementsSize, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationEntityImpl &&
            (identical(other.totalSum, totalSum) ||
                other.totalSum == totalSum) &&
            (identical(other.local, local) || other.local == local) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalElementsOnPage, totalElementsOnPage) ||
                other.totalElementsOnPage == totalElementsOnPage) &&
            (identical(other.elementsSize, elementsSize) ||
                other.elementsSize == elementsSize) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalSum,
      local,
      page,
      size,
      hasNext,
      totalPage,
      totalElementsOnPage,
      elementsSize,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationEntityImplCopyWith<_$PaginationEntityImpl> get copyWith =>
      __$$PaginationEntityImplCopyWithImpl<_$PaginationEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationEntityImplToJson(
      this,
    );
  }
}

abstract class _PaginationEntity implements PaginationEntity {
  factory _PaginationEntity(
      {final int? totalSum,
      final bool local,
      required final int page,
      required final int size,
      required final bool hasNext,
      required final int totalPage,
      required final int totalElementsOnPage,
      required final int elementsSize,
      required final List<dynamic> data}) = _$PaginationEntityImpl;

  factory _PaginationEntity.fromJson(Map<String, dynamic> json) =
      _$PaginationEntityImpl.fromJson;

  @override
  int? get totalSum;
  @override
  bool get local;
  @override
  int get page;
  @override
  int get size;
  @override
  bool get hasNext;
  @override
  int get totalPage;
  @override
  int get totalElementsOnPage;
  @override
  int get elementsSize;
  @override
  List<dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$PaginationEntityImplCopyWith<_$PaginationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
