import 'dart:convert';

import 'package:agro_app/src/core/base/base_request_model.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product_request_model.freezed.dart';
part 'create_product_request_model.g.dart';

@freezed
class CreateProductRequestModel extends BaseRequestModel
    with _$CreateProductRequestModel {
  const CreateProductRequestModel._();
  factory CreateProductRequestModel({
    required String title,
    required String description,
    @Default(ProductType.none) ProductType type,
    Category? category,
    @Default([]) List<String> photoLinks,
    @Default('') String videoLink,
    @Default('') String storageType,
    @Default('') String origin,
    @Default(0) int year,
    @Default('') String phoneWhatsapp,
    @Default('') String linkTelegram,
    @Default('') String grade,
    @Default('') String humidity,
    @Default(0) double price,
    @Default('') String location,
    ProductCategory? productCategory,
    ProductSubCategory? productSubCategory,
    AdditionalService? additionalService,
    Specialization? specialization,
  }) = _CreateProductRequestModel;

  factory CreateProductRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductRequestModelFromJson(json);

  String toRawData() => json.encode(toJson());
}
