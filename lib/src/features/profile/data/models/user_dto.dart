import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto extends BaseDto with _$UserDto {
  factory UserDto({
    required String id,
    required String username,
    required String email,
    String? roleType,
    String? fio,
    String? socLink,
    String? contactPhone,
    String? address,
    String? city,
    String? country,
    String? photoLink,
    String? bin,
    @Default(false) bool isBlocked,
    String? activationCodes,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
