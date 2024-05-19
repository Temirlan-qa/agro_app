// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertising_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvertisingEntity _$AdvertisingEntityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _AdvertisingEntity.fromJson(json);
    case 'empty':
      return _AdvertisingEntityEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AdvertisingEntity',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AdvertisingEntity {
  dynamic get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String title, String description, String price,
            bool selected)
        $default, {
    required TResult Function(dynamic id, String title, String description,
            String price, bool selected)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String title, String description, String price,
            bool selected)?
        $default, {
    TResult? Function(dynamic id, String title, String description,
            String price, bool selected)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String title, String description, String price,
            bool selected)?
        $default, {
    TResult Function(dynamic id, String title, String description, String price,
            bool selected)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AdvertisingEntity value) $default, {
    required TResult Function(_AdvertisingEntityEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdvertisingEntity value)? $default, {
    TResult? Function(_AdvertisingEntityEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdvertisingEntity value)? $default, {
    TResult Function(_AdvertisingEntityEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisingEntityCopyWith<AdvertisingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisingEntityCopyWith<$Res> {
  factory $AdvertisingEntityCopyWith(
          AdvertisingEntity value, $Res Function(AdvertisingEntity) then) =
      _$AdvertisingEntityCopyWithImpl<$Res, AdvertisingEntity>;
  @useResult
  $Res call({String title, String description, String price, bool selected});
}

/// @nodoc
class _$AdvertisingEntityCopyWithImpl<$Res, $Val extends AdvertisingEntity>
    implements $AdvertisingEntityCopyWith<$Res> {
  _$AdvertisingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisingEntityImplCopyWith<$Res>
    implements $AdvertisingEntityCopyWith<$Res> {
  factory _$$AdvertisingEntityImplCopyWith(_$AdvertisingEntityImpl value,
          $Res Function(_$AdvertisingEntityImpl) then) =
      __$$AdvertisingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String price,
      bool selected});
}

/// @nodoc
class __$$AdvertisingEntityImplCopyWithImpl<$Res>
    extends _$AdvertisingEntityCopyWithImpl<$Res, _$AdvertisingEntityImpl>
    implements _$$AdvertisingEntityImplCopyWith<$Res> {
  __$$AdvertisingEntityImplCopyWithImpl(_$AdvertisingEntityImpl _value,
      $Res Function(_$AdvertisingEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? selected = null,
  }) {
    return _then(_$AdvertisingEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisingEntityImpl implements _AdvertisingEntity {
  const _$AdvertisingEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      this.selected = false,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$AdvertisingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisingEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String price;
  @override
  @JsonKey()
  final bool selected;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AdvertisingEntity(id: $id, title: $title, description: $description, price: $price, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisingEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, price, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisingEntityImplCopyWith<_$AdvertisingEntityImpl> get copyWith =>
      __$$AdvertisingEntityImplCopyWithImpl<_$AdvertisingEntityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String title, String description, String price,
            bool selected)
        $default, {
    required TResult Function(dynamic id, String title, String description,
            String price, bool selected)
        empty,
  }) {
    return $default(id, title, description, price, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String title, String description, String price,
            bool selected)?
        $default, {
    TResult? Function(dynamic id, String title, String description,
            String price, bool selected)?
        empty,
  }) {
    return $default?.call(id, title, description, price, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String title, String description, String price,
            bool selected)?
        $default, {
    TResult Function(dynamic id, String title, String description, String price,
            bool selected)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, title, description, price, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AdvertisingEntity value) $default, {
    required TResult Function(_AdvertisingEntityEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdvertisingEntity value)? $default, {
    TResult? Function(_AdvertisingEntityEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdvertisingEntity value)? $default, {
    TResult Function(_AdvertisingEntityEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisingEntityImplToJson(
      this,
    );
  }
}

abstract class _AdvertisingEntity implements AdvertisingEntity {
  const factory _AdvertisingEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final String price,
      final bool selected}) = _$AdvertisingEntityImpl;

  factory _AdvertisingEntity.fromJson(Map<String, dynamic> json) =
      _$AdvertisingEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisingEntityImplCopyWith<_$AdvertisingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdvertisingEntityEmptyImplCopyWith<$Res>
    implements $AdvertisingEntityCopyWith<$Res> {
  factory _$$AdvertisingEntityEmptyImplCopyWith(
          _$AdvertisingEntityEmptyImpl value,
          $Res Function(_$AdvertisingEntityEmptyImpl) then) =
      __$$AdvertisingEntityEmptyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String title,
      String description,
      String price,
      bool selected});
}

/// @nodoc
class __$$AdvertisingEntityEmptyImplCopyWithImpl<$Res>
    extends _$AdvertisingEntityCopyWithImpl<$Res, _$AdvertisingEntityEmptyImpl>
    implements _$$AdvertisingEntityEmptyImplCopyWith<$Res> {
  __$$AdvertisingEntityEmptyImplCopyWithImpl(
      _$AdvertisingEntityEmptyImpl _value,
      $Res Function(_$AdvertisingEntityEmptyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? selected = null,
  }) {
    return _then(_$AdvertisingEntityEmptyImpl(
      id: freezed == id ? _value.id! : id,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisingEntityEmptyImpl implements _AdvertisingEntityEmpty {
  const _$AdvertisingEntityEmptyImpl(
      {this.id = '',
      this.title = '5',
      this.description = '5',
      this.price = '6900',
      this.selected = false,
      final String? $type})
      : $type = $type ?? 'empty';

  factory _$AdvertisingEntityEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisingEntityEmptyImplFromJson(json);

  @override
  @JsonKey()
  final dynamic id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String price;
  @override
  @JsonKey()
  final bool selected;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AdvertisingEntity.empty(id: $id, title: $title, description: $description, price: $price, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisingEntityEmptyImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      title,
      description,
      price,
      selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisingEntityEmptyImplCopyWith<_$AdvertisingEntityEmptyImpl>
      get copyWith => __$$AdvertisingEntityEmptyImplCopyWithImpl<
          _$AdvertisingEntityEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String title, String description, String price,
            bool selected)
        $default, {
    required TResult Function(dynamic id, String title, String description,
            String price, bool selected)
        empty,
  }) {
    return empty(id, title, description, price, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String title, String description, String price,
            bool selected)?
        $default, {
    TResult? Function(dynamic id, String title, String description,
            String price, bool selected)?
        empty,
  }) {
    return empty?.call(id, title, description, price, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String title, String description, String price,
            bool selected)?
        $default, {
    TResult Function(dynamic id, String title, String description, String price,
            bool selected)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(id, title, description, price, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AdvertisingEntity value) $default, {
    required TResult Function(_AdvertisingEntityEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AdvertisingEntity value)? $default, {
    TResult? Function(_AdvertisingEntityEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AdvertisingEntity value)? $default, {
    TResult Function(_AdvertisingEntityEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisingEntityEmptyImplToJson(
      this,
    );
  }
}

abstract class _AdvertisingEntityEmpty implements AdvertisingEntity {
  const factory _AdvertisingEntityEmpty(
      {final dynamic id,
      final String title,
      final String description,
      final String price,
      final bool selected}) = _$AdvertisingEntityEmptyImpl;

  factory _AdvertisingEntityEmpty.fromJson(Map<String, dynamic> json) =
      _$AdvertisingEntityEmptyImpl.fromJson;

  @override
  dynamic get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get price;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisingEntityEmptyImplCopyWith<_$AdvertisingEntityEmptyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
