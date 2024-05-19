import 'dart:convert';

import 'package:agro_app/src/core/base/base_request_model.dart';
import 'package:agro_app/src/core/enum/product_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_products_request_model.freezed.dart';
part 'search_products_request_model.g.dart';

@freezed
class SearchProductsRequestModel extends BaseRequestModel
    with _$SearchProductsRequestModel {
  const SearchProductsRequestModel._();

  factory SearchProductsRequestModel({
    final String? key,
    final Category? category,
    final ProductType? type,
    final String? location,
    final String? storageType,
    final String? origin,
    final int? year,
    final String? grade,
    final String? humidity,
    final AdditionalService? serviceType,
    final int? sumMin,
    final int? sumMax,
    final String? createdAtFrom,
    final String? createdAtTo,
    Specialization? specialization,
    ProductCategory? productCategory,
    ProductSubCategory? productSubCategory,
    AdditionalService? additionalService,
  }) = _SearchProductsRequestModel;

  factory SearchProductsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SearchProductsRequestModelFromJson(json);

  String toRawData() => json.encode(toJson());
}
