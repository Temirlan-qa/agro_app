// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsPageState _$ProductsPageStateFromJson(Map<String, dynamic> json) {
  return _ProductsPageState.fromJson(json);
}

/// @nodoc
mixin _$ProductsPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  Category get selectedCategory => throw _privateConstructorUsedError;
  List<FaqEntity> get faqs => throw _privateConstructorUsedError;
  ProductCategory get selectedProductCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsPageStateCopyWith<ProductsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsPageStateCopyWith<$Res> {
  factory $ProductsPageStateCopyWith(
          ProductsPageState value, $Res Function(ProductsPageState) then) =
      _$ProductsPageStateCopyWithImpl<$Res, ProductsPageState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ProductEntity> products,
      Category selectedCategory,
      List<FaqEntity> faqs,
      ProductCategory selectedProductCategory});
}

/// @nodoc
class _$ProductsPageStateCopyWithImpl<$Res, $Val extends ProductsPageState>
    implements $ProductsPageStateCopyWith<$Res> {
  _$ProductsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? selectedCategory = null,
    Object? faqs = null,
    Object? selectedProductCategory = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      faqs: null == faqs
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqEntity>,
      selectedProductCategory: null == selectedProductCategory
          ? _value.selectedProductCategory
          : selectedProductCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsPageStateImplCopyWith<$Res>
    implements $ProductsPageStateCopyWith<$Res> {
  factory _$$ProductsPageStateImplCopyWith(_$ProductsPageStateImpl value,
          $Res Function(_$ProductsPageStateImpl) then) =
      __$$ProductsPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ProductEntity> products,
      Category selectedCategory,
      List<FaqEntity> faqs,
      ProductCategory selectedProductCategory});
}

/// @nodoc
class __$$ProductsPageStateImplCopyWithImpl<$Res>
    extends _$ProductsPageStateCopyWithImpl<$Res, _$ProductsPageStateImpl>
    implements _$$ProductsPageStateImplCopyWith<$Res> {
  __$$ProductsPageStateImplCopyWithImpl(_$ProductsPageStateImpl _value,
      $Res Function(_$ProductsPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? selectedCategory = null,
    Object? faqs = null,
    Object? selectedProductCategory = null,
  }) {
    return _then(_$ProductsPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category,
      faqs: null == faqs
          ? _value._faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqEntity>,
      selectedProductCategory: null == selectedProductCategory
          ? _value.selectedProductCategory
          : selectedProductCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsPageStateImpl implements _ProductsPageState {
  _$ProductsPageStateImpl(
      {this.isLoading = false,
      final List<ProductEntity> products = const [],
      this.selectedCategory = Category.none,
      final List<FaqEntity> faqs = const [],
      this.selectedProductCategory = ProductCategory.none})
      : _products = products,
        _faqs = faqs;

  factory _$ProductsPageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsPageStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final Category selectedCategory;
  final List<FaqEntity> _faqs;
  @override
  @JsonKey()
  List<FaqEntity> get faqs {
    if (_faqs is EqualUnmodifiableListView) return _faqs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faqs);
  }

  @override
  @JsonKey()
  final ProductCategory selectedProductCategory;

  @override
  String toString() {
    return 'ProductsPageState(isLoading: $isLoading, products: $products, selectedCategory: $selectedCategory, faqs: $faqs, selectedProductCategory: $selectedProductCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality().equals(other._faqs, _faqs) &&
            (identical(
                    other.selectedProductCategory, selectedProductCategory) ||
                other.selectedProductCategory == selectedProductCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_products),
      selectedCategory,
      const DeepCollectionEquality().hash(_faqs),
      selectedProductCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsPageStateImplCopyWith<_$ProductsPageStateImpl> get copyWith =>
      __$$ProductsPageStateImplCopyWithImpl<_$ProductsPageStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsPageStateImplToJson(
      this,
    );
  }
}

abstract class _ProductsPageState implements ProductsPageState {
  factory _ProductsPageState(
      {final bool isLoading,
      final List<ProductEntity> products,
      final Category selectedCategory,
      final List<FaqEntity> faqs,
      final ProductCategory selectedProductCategory}) = _$ProductsPageStateImpl;

  factory _ProductsPageState.fromJson(Map<String, dynamic> json) =
      _$ProductsPageStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  List<ProductEntity> get products;
  @override
  Category get selectedCategory;
  @override
  List<FaqEntity> get faqs;
  @override
  ProductCategory get selectedProductCategory;
  @override
  @JsonKey(ignore: true)
  _$$ProductsPageStateImplCopyWith<_$ProductsPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
