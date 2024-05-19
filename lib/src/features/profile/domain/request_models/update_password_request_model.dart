import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_request_model.dart';

part 'update_password_request_model.freezed.dart';
part 'update_password_request_model.g.dart';

@freezed
class UpdatePasswordRequestModel extends BaseRequestModel
    with _$UpdatePasswordRequestModel {
  const factory UpdatePasswordRequestModel({
    required String oldPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) = _UpdatePasswordRequestModel;

  factory UpdatePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordRequestModelFromJson(json);
}
