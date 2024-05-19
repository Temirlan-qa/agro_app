import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_request_model.dart';

part 'log_out_request_model.freezed.dart';
part 'log_out_request_model.g.dart';

@freezed
class LogOutRequestModel extends BaseRequestModel with _$LogOutRequestModel {
  const factory LogOutRequestModel({
    required String accessToken,
    required String refreshToken,
  }) = _LogOutRequestModel;

  factory LogOutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LogOutRequestModelFromJson(json);
}
