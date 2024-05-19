import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_out_dto.freezed.dart';
part 'log_out_dto.g.dart';

@freezed
class LogOutDto extends BaseDto with _$LogOutDto {
  const factory LogOutDto({
    required String description,
  }) = _LogOutDto;

  factory LogOutDto.fromJson(Map<String, dynamic> json) =>
      _$LogOutDtoFromJson(json);
}
