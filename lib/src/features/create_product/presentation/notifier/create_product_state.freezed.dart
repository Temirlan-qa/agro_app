// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProductState _$CreateProductStateFromJson(Map<String, dynamic> json) {
  return _CreateProductState.fromJson(json);
}

/// @nodoc
mixin _$CreateProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  ProductEntity get product => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  bool get fileUploading => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  List<CreateProductErrorFields> get errorFields =>
      throw _privateConstructorUsedError;
  bool get saveProduct => throw _privateConstructorUsedError;
  ProductEntity get initProduct => throw _privateConstructorUsedError;
  bool get isSaveBtnPressed => throw _privateConstructorUsedError;
  List<ProductSubCategory> get productSubCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProductStateCopyWith<CreateProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductStateCopyWith<$Res> {
  factory $CreateProductStateCopyWith(
          CreateProductState value, $Res Function(CreateProductState) then) =
      _$CreateProductStateCopyWithImpl<$Res, CreateProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      ProductEntity product,
      List<String> imageUrls,
      bool fileUploading,
      int currentImageIndex,
      List<CreateProductErrorFields> errorFields,
      bool saveProduct,
      ProductEntity initProduct,
      bool isSaveBtnPressed,
      List<ProductSubCategory> productSubCategories});

  $ProductEntityCopyWith<$Res> get product;
  $ProductEntityCopyWith<$Res> get initProduct;
}

/// @nodoc
class _$CreateProductStateCopyWithImpl<$Res, $Val extends CreateProductState>
    implements $CreateProductStateCopyWith<$Res> {
  _$CreateProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? product = null,
    Object? imageUrls = null,
    Object? fileUploading = null,
    Object? currentImageIndex = null,
    Object? errorFields = null,
    Object? saveProduct = null,
    Object? initProduct = null,
    Object? isSaveBtnPressed = null,
    Object? productSubCategories = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fileUploading: null == fileUploading
          ? _value.fileUploading
          : fileUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      errorFields: null == errorFields
          ? _value.errorFields
          : errorFields // ignore: cast_nullable_to_non_nullable
              as List<CreateProductErrorFields>,
      saveProduct: null == saveProduct
          ? _value.saveProduct
          : saveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      initProduct: null == initProduct
          ? _value.initProduct
          : initProduct // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      isSaveBtnPressed: null == isSaveBtnPressed
          ? _value.isSaveBtnPressed
          : isSaveBtnPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      productSubCategories: null == productSubCategories
          ? _value.productSubCategories
          : productSubCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductSubCategory>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get initProduct {
    return $ProductEntityCopyWith<$Res>(_value.initProduct, (value) {
      return _then(_value.copyWith(initProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateProductStateImplCopyWith<$Res>
    implements $CreateProductStateCopyWith<$Res> {
  factory _$$CreateProductStateImplCopyWith(_$CreateProductStateImpl value,
          $Res Function(_$CreateProductStateImpl) then) =
      __$$CreateProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ProductEntity product,
      List<String> imageUrls,
      bool fileUploading,
      int currentImageIndex,
      List<CreateProductErrorFields> errorFields,
      bool saveProduct,
      ProductEntity initProduct,
      bool isSaveBtnPressed,
      List<ProductSubCategory> productSubCategories});

  @override
  $ProductEntityCopyWith<$Res> get product;
  @override
  $ProductEntityCopyWith<$Res> get initProduct;
}

/// @nodoc
class __$$CreateProductStateImplCopyWithImpl<$Res>
    extends _$CreateProductStateCopyWithImpl<$Res, _$CreateProductStateImpl>
    implements _$$CreateProductStateImplCopyWith<$Res> {
  __$$CreateProductStateImplCopyWithImpl(_$CreateProductStateImpl _value,
      $Res Function(_$CreateProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? product = null,
    Object? imageUrls = null,
    Object? fileUploading = null,
    Object? currentImageIndex = null,
    Object? errorFields = null,
    Object? saveProduct = null,
    Object? initProduct = null,
    Object? isSaveBtnPressed = null,
    Object? productSubCategories = null,
  }) {
    return _then(_$CreateProductStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fileUploading: null == fileUploading
          ? _value.fileUploading
          : fileUploading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      errorFields: null == errorFields
          ? _value._errorFields
          : errorFields // ignore: cast_nullable_to_non_nullable
              as List<CreateProductErrorFields>,
      saveProduct: null == saveProduct
          ? _value.saveProduct
          : saveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      initProduct: null == initProduct
          ? _value.initProduct
          : initProduct // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      isSaveBtnPressed: null == isSaveBtnPressed
          ? _value.isSaveBtnPressed
          : isSaveBtnPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      productSubCategories: null == productSubCategories
          ? _value._productSubCategories
          : productSubCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductSubCategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProductStateImpl implements _CreateProductState {
  _$CreateProductStateImpl(
      {this.isLoading = false,
      required this.product,
      final List<String> imageUrls = const [],
      this.fileUploading = false,
      this.currentImageIndex = 0,
      final List<CreateProductErrorFields> errorFields = const [],
      this.saveProduct = false,
      required this.initProduct,
      this.isSaveBtnPressed = false,
      final List<ProductSubCategory> productSubCategories = const []})
      : _imageUrls = imageUrls,
        _errorFields = errorFields,
        _productSubCategories = productSubCategories;

  factory _$CreateProductStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProductStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final ProductEntity product;
  final List<String> _imageUrls;
  @override
  @JsonKey()
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey()
  final bool fileUploading;
  @override
  @JsonKey()
  final int currentImageIndex;
  final List<CreateProductErrorFields> _errorFields;
  @override
  @JsonKey()
  List<CreateProductErrorFields> get errorFields {
    if (_errorFields is EqualUnmodifiableListView) return _errorFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorFields);
  }

  @override
  @JsonKey()
  final bool saveProduct;
  @override
  final ProductEntity initProduct;
  @override
  @JsonKey()
  final bool isSaveBtnPressed;
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
    return 'CreateProductState(isLoading: $isLoading, product: $product, imageUrls: $imageUrls, fileUploading: $fileUploading, currentImageIndex: $currentImageIndex, errorFields: $errorFields, saveProduct: $saveProduct, initProduct: $initProduct, isSaveBtnPressed: $isSaveBtnPressed, productSubCategories: $productSubCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.fileUploading, fileUploading) ||
                other.fileUploading == fileUploading) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex) &&
            const DeepCollectionEquality()
                .equals(other._errorFields, _errorFields) &&
            (identical(other.saveProduct, saveProduct) ||
                other.saveProduct == saveProduct) &&
            (identical(other.initProduct, initProduct) ||
                other.initProduct == initProduct) &&
            (identical(other.isSaveBtnPressed, isSaveBtnPressed) ||
                other.isSaveBtnPressed == isSaveBtnPressed) &&
            const DeepCollectionEquality()
                .equals(other._productSubCategories, _productSubCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      product,
      const DeepCollectionEquality().hash(_imageUrls),
      fileUploading,
      currentImageIndex,
      const DeepCollectionEquality().hash(_errorFields),
      saveProduct,
      initProduct,
      isSaveBtnPressed,
      const DeepCollectionEquality().hash(_productSubCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductStateImplCopyWith<_$CreateProductStateImpl> get copyWith =>
      __$$CreateProductStateImplCopyWithImpl<_$CreateProductStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProductStateImplToJson(
      this,
    );
  }
}

abstract class _CreateProductState implements CreateProductState {
  factory _CreateProductState(
          {final bool isLoading,
          required final ProductEntity product,
          final List<String> imageUrls,
          final bool fileUploading,
          final int currentImageIndex,
          final List<CreateProductErrorFields> errorFields,
          final bool saveProduct,
          required final ProductEntity initProduct,
          final bool isSaveBtnPressed,
          final List<ProductSubCategory> productSubCategories}) =
      _$CreateProductStateImpl;

  factory _CreateProductState.fromJson(Map<String, dynamic> json) =
      _$CreateProductStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  ProductEntity get product;
  @override
  List<String> get imageUrls;
  @override
  bool get fileUploading;
  @override
  int get currentImageIndex;
  @override
  List<CreateProductErrorFields> get errorFields;
  @override
  bool get saveProduct;
  @override
  ProductEntity get initProduct;
  @override
  bool get isSaveBtnPressed;
  @override
  List<ProductSubCategory> get productSubCategories;
  @override
  @JsonKey(ignore: true)
  _$$CreateProductStateImplCopyWith<_$CreateProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
