import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_dto.freezed.dart';
part 'pagination_dto.g.dart';

@freezed
class PaginationDto with _$PaginationDto {
  factory PaginationDto({
    int? totalSum,
    @Default(false) bool local,
    required int page,
    required int size,
    required bool hasNext,
    required int totalPage,
    required int totalElementsOnPage,
    required int elementsSize,
    required List<dynamic> data,
  }) = _PaginationDto;

  factory PaginationDto.fromJson(Map<String, dynamic> json) =>
      _$PaginationDtoFromJson(json);
}
