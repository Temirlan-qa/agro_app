import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_request_model.dart';

part 'update_user_info_request_model.freezed.dart';
part 'update_user_info_request_model.g.dart';

@freezed
class UpdateUserInfoRequestModel extends BaseRequestModel
    with _$UpdateUserInfoRequestModel {
  const factory UpdateUserInfoRequestModel({
    String? id,
    String? email,
    String? username,
    String? fio,
    String? socLink,
    String? contactPhone,
    String? address,
    String? city,
    String? country,
    String? bin,
    String? photoLink,
  }) = _UpdateUserInfoRequestModel;

  factory UpdateUserInfoRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInfoRequestModelFromJson(json);
}
