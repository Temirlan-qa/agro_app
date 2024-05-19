// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_sub_categories_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSubCategoriesDto _$ProductSubCategoriesDtoFromJson(
    Map<String, dynamic> json) {
  return _ProductSubCategoriesDto.fromJson(json);
}

/// @nodoc
mixin _$ProductSubCategoriesDto {
  List<ProductSubCategory> get productSubCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSubCategoriesDtoCopyWith<ProductSubCategoriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubCategoriesDtoCopyWith<$Res> {
  factory $ProductSubCategoriesDtoCopyWith(ProductSubCategoriesDto value,
          $Res Function(ProductSubCategoriesDto) then) =
      _$ProductSubCategoriesDtoCopyWithImpl<$Res, ProductSubCategoriesDto>;
  @useResult
  $Res call({List<ProductSubCategory> productSubCategories});
}

/// @nodoc
class _$ProductSubCategoriesDtoCopyWithImpl<$Res,
        $Val extends ProductSubCategoriesDto>
    implements $ProductSubCategoriesDtoCopyWith<$Res> {
  _$ProductSubCategoriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productSubCategories = null,
  }) {
    return _then(_value.copyWith(
      productSubCategories: null == productSubCategories
          ? _value.productSubCategories
          : productSubCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductSubCategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSubCategoriesDtoImplCopyWith<$Res>
    implements $ProductSubCategoriesDtoCopyWith<$Res> {
  factory _$$ProductSubCategoriesDtoImplCopyWith(
          _$ProductSubCategoriesDtoImpl value,
          $Res Function(_$ProductSubCategoriesDtoImpl) then) =
      __$$ProductSubCategoriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductSubCategory> productSubCategories});
}

/// @nodoc
class __$$ProductSubCategoriesDtoImplCopyWithImpl<$Res>
    extends _$ProductSubCategoriesDtoCopyWithImpl<$Res,
        _$ProductSubCategoriesDtoImpl>
    implements _$$ProductSubCategoriesDtoImplCopyWith<$Res> {
  __$$ProductSubCategoriesDtoImplCopyWithImpl(
      _$ProductSubCategoriesDtoImpl _value,
      $Res Function(_$ProductSubCategoriesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productSubCategories = null,
  }) {
    return _then(_$ProductSubCategoriesDtoImpl(
      productSubCategories: null == productSubCategories
          ? _value._productSubCategories
          : productSubCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductSubCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSubCategoriesDtoImpl implements _ProductSubCategoriesDto {
  _$ProductSubCategoriesDtoImpl(
      {final List<ProductSubCategory> productSubCategories = const []})
      : _productSubCategories = productSubCategories;

  factory _$ProductSubCategoriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSubCategoriesDtoImplFromJson(json);

  final List<ProductSubCategory> _productSubCategories;
  @override
  @JsonKey()
  List<ProductSubCategory> get productSubCategories {
    if (_productSubCategories is EqualUnmodifiableListView)
      return _productSubCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productSubCategories);
  }

  @override
  String toString() {
    return 'ProductSubCategoriesDto(productSubCategories: $productSubCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSubCategoriesDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._productSubCategories, _productSubCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productSubCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSubCategoriesDtoImplCopyWith<_$ProductSubCategoriesDtoImpl>
      get copyWith => __$$ProductSubCategoriesDtoImplCopyWithImpl<
          _$ProductSubCategoriesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSubCategoriesDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductSubCategoriesDto implements ProductSubCategoriesDto {
  factory _ProductSubCategoriesDto(
          {final List<ProductSubCategory> productSubCategories}) =
      _$ProductSubCategoriesDtoImpl;

  factory _ProductSubCategoriesDto.fromJson(Map<String, dynamic> json) =
      _$ProductSubCategoriesDtoImpl.fromJson;

  @override
  List<ProductSubCategory> get productSubCategories;
  @override
  @JsonKey(ignore: true)
  _$$ProductSubCategoriesDtoImplCopyWith<_$ProductSubCategoriesDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
