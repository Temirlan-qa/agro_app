// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertising_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdvertisingState {
  AdvertisingEntity get advertisingEntity => throw _privateConstructorUsedError;
  bool get isSelectedAds => throw _privateConstructorUsedError;
  List<AdvertisingEntity> get advertising => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvertisingStateCopyWith<AdvertisingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisingStateCopyWith<$Res> {
  factory $AdvertisingStateCopyWith(
          AdvertisingState value, $Res Function(AdvertisingState) then) =
      _$AdvertisingStateCopyWithImpl<$Res, AdvertisingState>;
  @useResult
  $Res call(
      {AdvertisingEntity advertisingEntity,
      bool isSelectedAds,
      List<AdvertisingEntity> advertising});

  $AdvertisingEntityCopyWith<$Res> get advertisingEntity;
}

/// @nodoc
class _$AdvertisingStateCopyWithImpl<$Res, $Val extends AdvertisingState>
    implements $AdvertisingStateCopyWith<$Res> {
  _$AdvertisingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisingEntity = null,
    Object? isSelectedAds = null,
    Object? advertising = null,
  }) {
    return _then(_value.copyWith(
      advertisingEntity: null == advertisingEntity
          ? _value.advertisingEntity
          : advertisingEntity // ignore: cast_nullable_to_non_nullable
              as AdvertisingEntity,
      isSelectedAds: null == isSelectedAds
          ? _value.isSelectedAds
          : isSelectedAds // ignore: cast_nullable_to_non_nullable
              as bool,
      advertising: null == advertising
          ? _value.advertising
          : advertising // ignore: cast_nullable_to_non_nullable
              as List<AdvertisingEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdvertisingEntityCopyWith<$Res> get advertisingEntity {
    return $AdvertisingEntityCopyWith<$Res>(_value.advertisingEntity, (value) {
      return _then(_value.copyWith(advertisingEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdvertisingStateImplCopyWith<$Res>
    implements $AdvertisingStateCopyWith<$Res> {
  factory _$$AdvertisingStateImplCopyWith(_$AdvertisingStateImpl value,
          $Res Function(_$AdvertisingStateImpl) then) =
      __$$AdvertisingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AdvertisingEntity advertisingEntity,
      bool isSelectedAds,
      List<AdvertisingEntity> advertising});

  @override
  $AdvertisingEntityCopyWith<$Res> get advertisingEntity;
}

/// @nodoc
class __$$AdvertisingStateImplCopyWithImpl<$Res>
    extends _$AdvertisingStateCopyWithImpl<$Res, _$AdvertisingStateImpl>
    implements _$$AdvertisingStateImplCopyWith<$Res> {
  __$$AdvertisingStateImplCopyWithImpl(_$AdvertisingStateImpl _value,
      $Res Function(_$AdvertisingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? advertisingEntity = null,
    Object? isSelectedAds = null,
    Object? advertising = null,
  }) {
    return _then(_$AdvertisingStateImpl(
      advertisingEntity: null == advertisingEntity
          ? _value.advertisingEntity
          : advertisingEntity // ignore: cast_nullable_to_non_nullable
              as AdvertisingEntity,
      isSelectedAds: null == isSelectedAds
          ? _value.isSelectedAds
          : isSelectedAds // ignore: cast_nullable_to_non_nullable
              as bool,
      advertising: null == advertising
          ? _value._advertising
          : advertising // ignore: cast_nullable_to_non_nullable
              as List<AdvertisingEntity>,
    ));
  }
}

/// @nodoc

class _$AdvertisingStateImpl implements _AdvertisingState {
  _$AdvertisingStateImpl(
      {required this.advertisingEntity,
      this.isSelectedAds = false,
      final List<AdvertisingEntity> advertising = const []})
      : _advertising = advertising;

  @override
  final AdvertisingEntity advertisingEntity;
  @override
  @JsonKey()
  final bool isSelectedAds;
  final List<AdvertisingEntity> _advertising;
  @override
  @JsonKey()
  List<AdvertisingEntity> get advertising {
    if (_advertising is EqualUnmodifiableListView) return _advertising;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advertising);
  }

  @override
  String toString() {
    return 'AdvertisingState(advertisingEntity: $advertisingEntity, isSelectedAds: $isSelectedAds, advertising: $advertising)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisingStateImpl &&
            (identical(other.advertisingEntity, advertisingEntity) ||
                other.advertisingEntity == advertisingEntity) &&
            (identical(other.isSelectedAds, isSelectedAds) ||
                other.isSelectedAds == isSelectedAds) &&
            const DeepCollectionEquality()
                .equals(other._advertising, _advertising));
  }

  @override
  int get hashCode => Object.hash(runtimeType, advertisingEntity, isSelectedAds,
      const DeepCollectionEquality().hash(_advertising));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisingStateImplCopyWith<_$AdvertisingStateImpl> get copyWith =>
      __$$AdvertisingStateImplCopyWithImpl<_$AdvertisingStateImpl>(
          this, _$identity);
}

abstract class _AdvertisingState implements AdvertisingState {
  factory _AdvertisingState(
      {required final AdvertisingEntity advertisingEntity,
      final bool isSelectedAds,
      final List<AdvertisingEntity> advertising}) = _$AdvertisingStateImpl;

  @override
  AdvertisingEntity get advertisingEntity;
  @override
  bool get isSelectedAds;
  @override
  List<AdvertisingEntity> get advertising;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisingStateImplCopyWith<_$AdvertisingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
