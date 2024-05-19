import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_request_model.dart';

part 'sign_up_request_model.freezed.dart';
part 'sign_up_request_model.g.dart';

@freezed
class SignUpRequestModel extends BaseRequestModel with _$SignUpRequestModel {
  const factory SignUpRequestModel({
    required String email,
    String? bin,
    required String roleType,
    required String username,
    required String password,
    required String fio,
    required String socLink,
    required String contactPhone,
    String? address,
    required String city,
    required String country,
  }) = _SignUpRequestModel;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);
}
