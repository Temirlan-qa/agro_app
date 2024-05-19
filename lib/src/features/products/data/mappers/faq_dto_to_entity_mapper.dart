import 'package:agro_app/src/features/products/data/models/dto/faq_dto.dart';
import 'package:agro_app/src/features/products/domain/entities/faq_entity.dart';

class FaqDtoMapper {
  FaqEntity map(FaqDto dto) {
    return FaqEntity(
      id: dto.id,
      question: dto.question,
      answer: dto.answer,
    );
  }
}
