// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_sub_categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSubCategoriesEntity _$ProductSubCategoriesEntityFromJson(
    Map<String, dynamic> json) {
  return _ProductSubCategoriesEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductSubCategoriesEntity {
  List<ProductSubCategory> get productSubCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSubCategoriesEntityCopyWith<ProductSubCategoriesEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSubCategoriesEntityCopyWith<$Res> {
  factory $ProductSubCategoriesEntityCopyWith(ProductSubCategoriesEntity value,
          $Res Function(ProductSubCategoriesEntity) then) =
      _$ProductSubCategoriesEntityCopyWithImpl<$Res,
          ProductSubCategoriesEntity>;
  @useResult
  $Res call({List<ProductSubCategory> productSubCategories});
}

/// @nodoc
class _$ProductSubCategoriesEntityCopyWithImpl<$Res,
        $Val extends ProductSubCategoriesEntity>
    implements $ProductSubCategoriesEntityCopyWith<$Res> {
  _$ProductSubCategoriesEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductSubCategoriesEntityImplCopyWith<$Res>
    implements $ProductSubCategoriesEntityCopyWith<$Res> {
  factory _$$ProductSubCategoriesEntityImplCopyWith(
          _$ProductSubCategoriesEntityImpl value,
          $Res Function(_$ProductSubCategoriesEntityImpl) then) =
      __$$ProductSubCategoriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductSubCategory> productSubCategories});
}

/// @nodoc
class __$$ProductSubCategoriesEntityImplCopyWithImpl<$Res>
    extends _$ProductSubCategoriesEntityCopyWithImpl<$Res,
        _$ProductSubCategoriesEntityImpl>
    implements _$$ProductSubCategoriesEntityImplCopyWith<$Res> {
  __$$ProductSubCategoriesEntityImplCopyWithImpl(
      _$ProductSubCategoriesEntityImpl _value,
      $Res Function(_$ProductSubCategoriesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productSubCategories = null,
  }) {
    return _then(_$ProductSubCategoriesEntityImpl(
      productSubCategories: null == productSubCategories
          ? _value._productSubCategories
          : productSubCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductSubCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSubCategoriesEntityImpl implements _ProductSubCategoriesEntity {
  _$ProductSubCategoriesEntityImpl(
      {required final List<ProductSubCategory> productSubCategories})
      : _productSubCategories = productSubCategories;

  factory _$ProductSubCategoriesEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductSubCategoriesEntityImplFromJson(json);

  final List<ProductSubCategory> _productSubCategories;
  @override
  List<ProductSubCategory> get productSubCategories {
    if (_productSubCategories is EqualUnmodifiableListView)
      return _productSubCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productSubCategories);
  }

  @override
  String toString() {
    return 'ProductSubCategoriesEntity(productSubCategories: $productSubCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSubCategoriesEntityImpl &&
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
  _$$ProductSubCategoriesEntityImplCopyWith<_$ProductSubCategoriesEntityImpl>
      get copyWith => __$$ProductSubCategoriesEntityImplCopyWithImpl<
          _$ProductSubCategoriesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSubCategoriesEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductSubCategoriesEntity
    implements ProductSubCategoriesEntity {
  factory _ProductSubCategoriesEntity(
          {required final List<ProductSubCategory> productSubCategories}) =
      _$ProductSubCategoriesEntityImpl;

  factory _ProductSubCategoriesEntity.fromJson(Map<String, dynamic> json) =
      _$ProductSubCategoriesEntityImpl.fromJson;

  @override
  List<ProductSubCategory> get productSubCategories;
  @override
  @JsonKey(ignore: true)
  _$$ProductSubCategoriesEntityImplCopyWith<_$ProductSubCategoriesEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
