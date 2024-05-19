import 'package:agro_app/src/core/base/base_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_dto.freezed.dart';
part 'faq_dto.g.dart';

@freezed
class FaqDto extends BaseDto with _$FaqDto {
  factory FaqDto({
    required int id,
    required String question,
    required String answer,
  }) = _FaqDto;

  factory FaqDto.fromJson(Map<String, dynamic> json) => _$FaqDtoFromJson(json);
}
