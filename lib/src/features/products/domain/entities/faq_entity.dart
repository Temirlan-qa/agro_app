import 'package:agro_app/src/core/base/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_entity.freezed.dart';
part 'faq_entity.g.dart';

@freezed
class FaqEntity extends BaseEntity with _$FaqEntity {
  factory FaqEntity({
    required int id,
    required String question,
    required String answer,
  }) = _FaqEntity;

  factory FaqEntity.fromJson(Map<String, dynamic> json) =>
      _$FaqEntityFromJson(json);
}
