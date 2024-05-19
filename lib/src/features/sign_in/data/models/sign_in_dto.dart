import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:agro_app/src/core/base/base_dto.dart';

part 'sign_in_dto.freezed.dart';
part 'sign_in_dto.g.dart';

@freezed
class SignInDto extends BaseDto with _$SignInDto {
  const factory SignInDto({
    required String accessToken,
    required String refreshToken,
  }) = _SignInDto;

  factory SignInDto.fromJson(Map<String, dynamic> json) =>
      _$SignInDtoFromJson(json);
}
