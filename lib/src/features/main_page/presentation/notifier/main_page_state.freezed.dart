// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainPageState {
  int get pageIndex => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  BuildContext? get categoryBoxesPageContext =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainPageStateCopyWith<MainPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageStateCopyWith<$Res> {
  factory $MainPageStateCopyWith(
          MainPageState value, $Res Function(MainPageState) then) =
      _$MainPageStateCopyWithImpl<$Res, MainPageState>;
  @useResult
  $Res call(
      {int pageIndex,
      List<ProductEntity> products,
      bool isLoading,
      BuildContext? categoryBoxesPageContext});
}

/// @nodoc
class _$MainPageStateCopyWithImpl<$Res, $Val extends MainPageState>
    implements $MainPageStateCopyWith<$Res> {
  _$MainPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? products = null,
    Object? isLoading = null,
    Object? categoryBoxesPageContext = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryBoxesPageContext: freezed == categoryBoxesPageContext
          ? _value.categoryBoxesPageContext
          : categoryBoxesPageContext // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainPageStateImplCopyWith<$Res>
    implements $MainPageStateCopyWith<$Res> {
  factory _$$MainPageStateImplCopyWith(
          _$MainPageStateImpl value, $Res Function(_$MainPageStateImpl) then) =
      __$$MainPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageIndex,
      List<ProductEntity> products,
      bool isLoading,
      BuildContext? categoryBoxesPageContext});
}

/// @nodoc
class __$$MainPageStateImplCopyWithImpl<$Res>
    extends _$MainPageStateCopyWithImpl<$Res, _$MainPageStateImpl>
    implements _$$MainPageStateImplCopyWith<$Res> {
  __$$MainPageStateImplCopyWithImpl(
      _$MainPageStateImpl _value, $Res Function(_$MainPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? products = null,
    Object? isLoading = null,
    Object? categoryBoxesPageContext = freezed,
  }) {
    return _then(_$MainPageStateImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryBoxesPageContext: freezed == categoryBoxesPageContext
          ? _value.categoryBoxesPageContext
          : categoryBoxesPageContext // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$MainPageStateImpl implements _MainPageState {
  _$MainPageStateImpl(
      {this.pageIndex = 0,
      final List<ProductEntity> products = const [],
      this.isLoading = false,
      this.categoryBoxesPageContext})
      : _products = products;

  @override
  @JsonKey()
  final int pageIndex;
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
  final bool isLoading;
  @override
  final BuildContext? categoryBoxesPageContext;

  @override
  String toString() {
    return 'MainPageState(pageIndex: $pageIndex, products: $products, isLoading: $isLoading, categoryBoxesPageContext: $categoryBoxesPageContext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageStateImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(
                    other.categoryBoxesPageContext, categoryBoxesPageContext) ||
                other.categoryBoxesPageContext == categoryBoxesPageContext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      pageIndex,
      const DeepCollectionEquality().hash(_products),
      isLoading,
      categoryBoxesPageContext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageStateImplCopyWith<_$MainPageStateImpl> get copyWith =>
      __$$MainPageStateImplCopyWithImpl<_$MainPageStateImpl>(this, _$identity);
}

abstract class _MainPageState implements MainPageState {
  factory _MainPageState(
      {final int pageIndex,
      final List<ProductEntity> products,
      final bool isLoading,
      final BuildContext? categoryBoxesPageContext}) = _$MainPageStateImpl;

  @override
  int get pageIndex;
  @override
  List<ProductEntity> get products;
  @override
  bool get isLoading;
  @override
  BuildContext? get categoryBoxesPageContext;
  @override
  @JsonKey(ignore: true)
  _$$MainPageStateImplCopyWith<_$MainPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
