// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_products_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProductsPageState _$UserProductsPageStateFromJson(
    Map<String, dynamic> json) {
  return _UserProductsPageState.fromJson(json);
}

/// @nodoc
mixin _$UserProductsPageState {
  List<ProductEntity> get userProducts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProductsPageStateCopyWith<UserProductsPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductsPageStateCopyWith<$Res> {
  factory $UserProductsPageStateCopyWith(UserProductsPageState value,
          $Res Function(UserProductsPageState) then) =
      _$UserProductsPageStateCopyWithImpl<$Res, UserProductsPageState>;
  @useResult
  $Res call({List<ProductEntity> userProducts, bool isLoading});
}

/// @nodoc
class _$UserProductsPageStateCopyWithImpl<$Res,
        $Val extends UserProductsPageState>
    implements $UserProductsPageStateCopyWith<$Res> {
  _$UserProductsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProducts = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      userProducts: null == userProducts
          ? _value.userProducts
          : userProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProductsPageStateImplCopyWith<$Res>
    implements $UserProductsPageStateCopyWith<$Res> {
  factory _$$UserProductsPageStateImplCopyWith(
          _$UserProductsPageStateImpl value,
          $Res Function(_$UserProductsPageStateImpl) then) =
      __$$UserProductsPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductEntity> userProducts, bool isLoading});
}

/// @nodoc
class __$$UserProductsPageStateImplCopyWithImpl<$Res>
    extends _$UserProductsPageStateCopyWithImpl<$Res,
        _$UserProductsPageStateImpl>
    implements _$$UserProductsPageStateImplCopyWith<$Res> {
  __$$UserProductsPageStateImplCopyWithImpl(_$UserProductsPageStateImpl _value,
      $Res Function(_$UserProductsPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProducts = null,
    Object? isLoading = null,
  }) {
    return _then(_$UserProductsPageStateImpl(
      userProducts: null == userProducts
          ? _value._userProducts
          : userProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProductsPageStateImpl implements _UserProductsPageState {
  _$UserProductsPageStateImpl(
      {final List<ProductEntity> userProducts = const [],
      this.isLoading = false})
      : _userProducts = userProducts;

  factory _$UserProductsPageStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProductsPageStateImplFromJson(json);

  final List<ProductEntity> _userProducts;
  @override
  @JsonKey()
  List<ProductEntity> get userProducts {
    if (_userProducts is EqualUnmodifiableListView) return _userProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userProducts);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'UserProductsPageState(userProducts: $userProducts, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProductsPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._userProducts, _userProducts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_userProducts), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProductsPageStateImplCopyWith<_$UserProductsPageStateImpl>
      get copyWith => __$$UserProductsPageStateImplCopyWithImpl<
          _$UserProductsPageStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProductsPageStateImplToJson(
      this,
    );
  }
}

abstract class _UserProductsPageState implements UserProductsPageState {
  factory _UserProductsPageState(
      {final List<ProductEntity> userProducts,
      final bool isLoading}) = _$UserProductsPageStateImpl;

  factory _UserProductsPageState.fromJson(Map<String, dynamic> json) =
      _$UserProductsPageStateImpl.fromJson;

  @override
  List<ProductEntity> get userProducts;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$UserProductsPageStateImplCopyWith<_$UserProductsPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
