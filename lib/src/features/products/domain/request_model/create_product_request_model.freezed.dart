// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_product_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProductRequestModel _$CreateProductRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateProductRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateProductRequestModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  List<String> get photoLinks => throw _privateConstructorUsedError;
  String get videoLink => throw _privateConstructorUsedError;
  String get storageType => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get phoneWhatsapp => throw _privateConstructorUsedError;
  String get linkTelegram => throw _privateConstructorUsedError;
  String get grade => throw _privateConstructorUsedError;
  String get humidity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  ProductCategory? get productCategory => throw _privateConstructorUsedError;
  ProductSubCategory? get productSubCategory =>
      throw _privateConstructorUsedError;
  AdditionalService? get additionalService =>
      throw _privateConstructorUsedError;
  Specialization? get specialization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProductRequestModelCopyWith<CreateProductRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductRequestModelCopyWith<$Res> {
  factory $CreateProductRequestModelCopyWith(CreateProductRequestModel value,
          $Res Function(CreateProductRequestModel) then) =
      _$CreateProductRequestModelCopyWithImpl<$Res, CreateProductRequestModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      ProductType type,
      Category? category,
      List<String> photoLinks,
      String videoLink,
      String storageType,
      String origin,
      int year,
      String phoneWhatsapp,
      String linkTelegram,
      String grade,
      String humidity,
      double price,
      String location,
      ProductCategory? productCategory,
      ProductSubCategory? productSubCategory,
      AdditionalService? additionalService,
      Specialization? specialization});
}

/// @nodoc
class _$CreateProductRequestModelCopyWithImpl<$Res,
        $Val extends CreateProductRequestModel>
    implements $CreateProductRequestModelCopyWith<$Res> {
  _$CreateProductRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? category = freezed,
    Object? photoLinks = null,
    Object? videoLink = null,
    Object? storageType = null,
    Object? origin = null,
    Object? year = null,
    Object? phoneWhatsapp = null,
    Object? linkTelegram = null,
    Object? grade = null,
    Object? humidity = null,
    Object? price = null,
    Object? location = null,
    Object? productCategory = freezed,
    Object? productSubCategory = freezed,
    Object? additionalService = freezed,
    Object? specialization = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      photoLinks: null == photoLinks
          ? _value.photoLinks
          : photoLinks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoLink: null == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      storageType: null == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      phoneWhatsapp: null == phoneWhatsapp
          ? _value.phoneWhatsapp
          : phoneWhatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      linkTelegram: null == linkTelegram
          ? _value.linkTelegram
          : linkTelegram // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      productSubCategory: freezed == productSubCategory
          ? _value.productSubCategory
          : productSubCategory // ignore: cast_nullable_to_non_nullable
              as ProductSubCategory?,
      additionalService: freezed == additionalService
          ? _value.additionalService
          : additionalService // ignore: cast_nullable_to_non_nullable
              as AdditionalService?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProductRequestModelImplCopyWith<$Res>
    implements $CreateProductRequestModelCopyWith<$Res> {
  factory _$$CreateProductRequestModelImplCopyWith(
          _$CreateProductRequestModelImpl value,
          $Res Function(_$CreateProductRequestModelImpl) then) =
      __$$CreateProductRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      ProductType type,
      Category? category,
      List<String> photoLinks,
      String videoLink,
      String storageType,
      String origin,
      int year,
      String phoneWhatsapp,
      String linkTelegram,
      String grade,
      String humidity,
      double price,
      String location,
      ProductCategory? productCategory,
      ProductSubCategory? productSubCategory,
      AdditionalService? additionalService,
      Specialization? specialization});
}

/// @nodoc
class __$$CreateProductRequestModelImplCopyWithImpl<$Res>
    extends _$CreateProductRequestModelCopyWithImpl<$Res,
        _$CreateProductRequestModelImpl>
    implements _$$CreateProductRequestModelImplCopyWith<$Res> {
  __$$CreateProductRequestModelImplCopyWithImpl(
      _$CreateProductRequestModelImpl _value,
      $Res Function(_$CreateProductRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? category = freezed,
    Object? photoLinks = null,
    Object? videoLink = null,
    Object? storageType = null,
    Object? origin = null,
    Object? year = null,
    Object? phoneWhatsapp = null,
    Object? linkTelegram = null,
    Object? grade = null,
    Object? humidity = null,
    Object? price = null,
    Object? location = null,
    Object? productCategory = freezed,
    Object? productSubCategory = freezed,
    Object? additionalService = freezed,
    Object? specialization = freezed,
  }) {
    return _then(_$CreateProductRequestModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      photoLinks: null == photoLinks
          ? _value._photoLinks
          : photoLinks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      videoLink: null == videoLink
          ? _value.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String,
      storageType: null == storageType
          ? _value.storageType
          : storageType // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      phoneWhatsapp: null == phoneWhatsapp
          ? _value.phoneWhatsapp
          : phoneWhatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      linkTelegram: null == linkTelegram
          ? _value.linkTelegram
          : linkTelegram // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: freezed == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      productSubCategory: freezed == productSubCategory
          ? _value.productSubCategory
          : productSubCategory // ignore: cast_nullable_to_non_nullable
              as ProductSubCategory?,
      additionalService: freezed == additionalService
          ? _value.additionalService
          : additionalService // ignore: cast_nullable_to_non_nullable
              as AdditionalService?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as Specialization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProductRequestModelImpl extends _CreateProductRequestModel {
  _$CreateProductRequestModelImpl(
      {required this.title,
      required this.description,
      this.type = ProductType.none,
      this.category,
      final List<String> photoLinks = const [],
      this.videoLink = '',
      this.storageType = '',
      this.origin = '',
      this.year = 0,
      this.phoneWhatsapp = '',
      this.linkTelegram = '',
      this.grade = '',
      this.humidity = '',
      this.price = 0,
      this.location = '',
      this.productCategory,
      this.productSubCategory,
      this.additionalService,
      this.specialization})
      : _photoLinks = photoLinks,
        super._();

  factory _$CreateProductRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProductRequestModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final ProductType type;
  @override
  final Category? category;
  final List<String> _photoLinks;
  @override
  @JsonKey()
  List<String> get photoLinks {
    if (_photoLinks is EqualUnmodifiableListView) return _photoLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoLinks);
  }

  @override
  @JsonKey()
  final String videoLink;
  @override
  @JsonKey()
  final String storageType;
  @override
  @JsonKey()
  final String origin;
  @override
  @JsonKey()
  final int year;
  @override
  @JsonKey()
  final String phoneWhatsapp;
  @override
  @JsonKey()
  final String linkTelegram;
  @override
  @JsonKey()
  final String grade;
  @override
  @JsonKey()
  final String humidity;
  @override
  @JsonKey()
  final double price;
  @override
  @JsonKey()
  final String location;
  @override
  final ProductCategory? productCategory;
  @override
  final ProductSubCategory? productSubCategory;
  @override
  final AdditionalService? additionalService;
  @override
  final Specialization? specialization;

  @override
  String toString() {
    return 'CreateProductRequestModel(title: $title, description: $description, type: $type, category: $category, photoLinks: $photoLinks, videoLink: $videoLink, storageType: $storageType, origin: $origin, year: $year, phoneWhatsapp: $phoneWhatsapp, linkTelegram: $linkTelegram, grade: $grade, humidity: $humidity, price: $price, location: $location, productCategory: $productCategory, productSubCategory: $productSubCategory, additionalService: $additionalService, specialization: $specialization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductRequestModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._photoLinks, _photoLinks) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.storageType, storageType) ||
                other.storageType == storageType) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.phoneWhatsapp, phoneWhatsapp) ||
                other.phoneWhatsapp == phoneWhatsapp) &&
            (identical(other.linkTelegram, linkTelegram) ||
                other.linkTelegram == linkTelegram) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory) &&
            (identical(other.productSubCategory, productSubCategory) ||
                other.productSubCategory == productSubCategory) &&
            (identical(other.additionalService, additionalService) ||
                other.additionalService == additionalService) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        title,
        description,
        type,
        category,
        const DeepCollectionEquality().hash(_photoLinks),
        videoLink,
        storageType,
        origin,
        year,
        phoneWhatsapp,
        linkTelegram,
        grade,
        humidity,
        price,
        location,
        productCategory,
        productSubCategory,
        additionalService,
        specialization
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductRequestModelImplCopyWith<_$CreateProductRequestModelImpl>
      get copyWith => __$$CreateProductRequestModelImplCopyWithImpl<
          _$CreateProductRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProductRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateProductRequestModel extends CreateProductRequestModel {
  factory _CreateProductRequestModel(
      {required final String title,
      required final String description,
      final ProductType type,
      final Category? category,
      final List<String> photoLinks,
      final String videoLink,
      final String storageType,
      final String origin,
      final int year,
      final String phoneWhatsapp,
      final String linkTelegram,
      final String grade,
      final String humidity,
      final double price,
      final String location,
      final ProductCategory? productCategory,
      final ProductSubCategory? productSubCategory,
      final AdditionalService? additionalService,
      final Specialization? specialization}) = _$CreateProductRequestModelImpl;
  _CreateProductRequestModel._() : super._();

  factory _CreateProductRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateProductRequestModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  ProductType get type;
  @override
  Category? get category;
  @override
  List<String> get photoLinks;
  @override
  String get videoLink;
  @override
  String get storageType;
  @override
  String get origin;
  @override
  int get year;
  @override
  String get phoneWhatsapp;
  @override
  String get linkTelegram;
  @override
  String get grade;
  @override
  String get humidity;
  @override
  double get price;
  @override
  String get location;
  @override
  ProductCategory? get productCategory;
  @override
  ProductSubCategory? get productSubCategory;
  @override
  AdditionalService? get additionalService;
  @override
  Specialization? get specialization;
  @override
  @JsonKey(ignore: true)
  _$$CreateProductRequestModelImplCopyWith<_$CreateProductRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
