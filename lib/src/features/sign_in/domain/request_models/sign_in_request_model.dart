import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_request_model.dart';

part 'sign_in_request_model.freezed.dart';
part 'sign_in_request_model.g.dart';

@freezed
class SignInRequestModel extends BaseRequestModel with _$SignInRequestModel {
  const factory SignInRequestModel({
    required String username,
    required String password,
  }) = _SignInRequestModel;

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestModelFromJson(json);
}
