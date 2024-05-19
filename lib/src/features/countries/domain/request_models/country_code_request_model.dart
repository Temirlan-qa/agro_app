import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_request_model.dart';

part 'country_code_request_model.freezed.dart';
part 'country_code_request_model.g.dart';

@freezed
class CountryCodeRequestModel extends BaseRequestModel
    with _$CountryCodeRequestModel {
  const factory CountryCodeRequestModel({
    required String code,
  }) = _CountryCodeRequestModel;

  factory CountryCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeRequestModelFromJson(json);
}
