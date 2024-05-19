import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_entity.freezed.dart';
part 'pagination_entity.g.dart';

@freezed
class PaginationEntity with _$PaginationEntity {
  factory PaginationEntity({
    int? totalSum,
    @Default(false) bool local,
    required int page,
    required int size,
    required bool hasNext,
    required int totalPage,
    required int totalElementsOnPage,
    required int elementsSize,
    required List<dynamic> data,
  }) = _PaginationEntity;

  factory PaginationEntity.fromJson(Map<String, dynamic> json) =>
      _$PaginationEntityFromJson(json);
}
