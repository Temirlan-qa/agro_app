// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_sub_category_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProductSubCategoryRequestModel _$GetProductSubCategoryRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetProductSubCategoryRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetProductSubCategoryRequestModel {
  ProductCategory get productCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProductSubCategoryRequestModelCopyWith<GetProductSubCategoryRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductSubCategoryRequestModelCopyWith<$Res> {
  factory $GetProductSubCategoryRequestModelCopyWith(
          GetProductSubCategoryRequestModel value,
          $Res Function(GetProductSubCategoryRequestModel) then) =
      _$GetProductSubCategoryRequestModelCopyWithImpl<$Res,
          GetProductSubCategoryRequestModel>;
  @useResult
  $Res call({ProductCategory productCategory});
}

/// @nodoc
class _$GetProductSubCategoryRequestModelCopyWithImpl<$Res,
        $Val extends GetProductSubCategoryRequestModel>
    implements $GetProductSubCategoryRequestModelCopyWith<$Res> {
  _$GetProductSubCategoryRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = null,
  }) {
    return _then(_value.copyWith(
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductSubCategoryRequestModelImplCopyWith<$Res>
    implements $GetProductSubCategoryRequestModelCopyWith<$Res> {
  factory _$$GetProductSubCategoryRequestModelImplCopyWith(
          _$GetProductSubCategoryRequestModelImpl value,
          $Res Function(_$GetProductSubCategoryRequestModelImpl) then) =
      __$$GetProductSubCategoryRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductCategory productCategory});
}

/// @nodoc
class __$$GetProductSubCategoryRequestModelImplCopyWithImpl<$Res>
    extends _$GetProductSubCategoryRequestModelCopyWithImpl<$Res,
        _$GetProductSubCategoryRequestModelImpl>
    implements _$$GetProductSubCategoryRequestModelImplCopyWith<$Res> {
  __$$GetProductSubCategoryRequestModelImplCopyWithImpl(
      _$GetProductSubCategoryRequestModelImpl _value,
      $Res Function(_$GetProductSubCategoryRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productCategory = null,
  }) {
    return _then(_$GetProductSubCategoryRequestModelImpl(
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProductSubCategoryRequestModelImpl
    extends _GetProductSubCategoryRequestModel {
  _$GetProductSubCategoryRequestModelImpl({required this.productCategory})
      : super._();

  factory _$GetProductSubCategoryRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetProductSubCategoryRequestModelImplFromJson(json);

  @override
  final ProductCategory productCategory;

  @override
  String toString() {
    return 'GetProductSubCategoryRequestModel(productCategory: $productCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductSubCategoryRequestModelImpl &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductSubCategoryRequestModelImplCopyWith<
          _$GetProductSubCategoryRequestModelImpl>
      get copyWith => __$$GetProductSubCategoryRequestModelImplCopyWithImpl<
          _$GetProductSubCategoryRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProductSubCategoryRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetProductSubCategoryRequestModel
    extends GetProductSubCategoryRequestModel {
  factory _GetProductSubCategoryRequestModel(
          {required final ProductCategory productCategory}) =
      _$GetProductSubCategoryRequestModelImpl;
  _GetProductSubCategoryRequestModel._() : super._();

  factory _GetProductSubCategoryRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetProductSubCategoryRequestModelImpl.fromJson;

  @override
  ProductCategory get productCategory;
  @override
  @JsonKey(ignore: true)
  _$$GetProductSubCategoryRequestModelImplCopyWith<
          _$GetProductSubCategoryRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
