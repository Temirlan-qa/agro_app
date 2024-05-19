// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesPageState {
  List<ProductEntity> get favoriteProducts =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesPageStateCopyWith<FavoritesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesPageStateCopyWith<$Res> {
  factory $FavoritesPageStateCopyWith(
          FavoritesPageState value, $Res Function(FavoritesPageState) then) =
      _$FavoritesPageStateCopyWithImpl<$Res, FavoritesPageState>;
  @useResult
  $Res call({List<ProductEntity> favoriteProducts, bool isLoading});
}

/// @nodoc
class _$FavoritesPageStateCopyWithImpl<$Res, $Val extends FavoritesPageState>
    implements $FavoritesPageStateCopyWith<$Res> {
  _$FavoritesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteProducts = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      favoriteProducts: null == favoriteProducts
          ? _value.favoriteProducts
          : favoriteProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesPageStateImplCopyWith<$Res>
    implements $FavoritesPageStateCopyWith<$Res> {
  factory _$$FavoritesPageStateImplCopyWith(_$FavoritesPageStateImpl value,
          $Res Function(_$FavoritesPageStateImpl) then) =
      __$$FavoritesPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductEntity> favoriteProducts, bool isLoading});
}

/// @nodoc
class __$$FavoritesPageStateImplCopyWithImpl<$Res>
    extends _$FavoritesPageStateCopyWithImpl<$Res, _$FavoritesPageStateImpl>
    implements _$$FavoritesPageStateImplCopyWith<$Res> {
  __$$FavoritesPageStateImplCopyWithImpl(_$FavoritesPageStateImpl _value,
      $Res Function(_$FavoritesPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteProducts = null,
    Object? isLoading = null,
  }) {
    return _then(_$FavoritesPageStateImpl(
      favoriteProducts: null == favoriteProducts
          ? _value._favoriteProducts
          : favoriteProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoritesPageStateImpl implements _FavoritesPageState {
  _$FavoritesPageStateImpl(
      {final List<ProductEntity> favoriteProducts = const [],
      this.isLoading = false})
      : _favoriteProducts = favoriteProducts;

  final List<ProductEntity> _favoriteProducts;
  @override
  @JsonKey()
  List<ProductEntity> get favoriteProducts {
    if (_favoriteProducts is EqualUnmodifiableListView)
      return _favoriteProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteProducts);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'FavoritesPageState(favoriteProducts: $favoriteProducts, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favoriteProducts, _favoriteProducts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_favoriteProducts), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesPageStateImplCopyWith<_$FavoritesPageStateImpl> get copyWith =>
      __$$FavoritesPageStateImplCopyWithImpl<_$FavoritesPageStateImpl>(
          this, _$identity);
}

abstract class _FavoritesPageState implements FavoritesPageState {
  factory _FavoritesPageState(
      {final List<ProductEntity> favoriteProducts,
      final bool isLoading}) = _$FavoritesPageStateImpl;

  @override
  List<ProductEntity> get favoriteProducts;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesPageStateImplCopyWith<_$FavoritesPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
