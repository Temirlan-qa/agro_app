import 'package:agro_app/src/core/base/base_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertising_entity.freezed.dart';
part 'advertising_entity.g.dart';

@freezed
class AdvertisingEntity extends BaseEntity with _$AdvertisingEntity {
  const factory AdvertisingEntity({
    required String id,
    required String title,
    required String description,
    required String price,
    @Default(false) bool selected,
  }) = _AdvertisingEntity;

  const factory AdvertisingEntity.empty({
    @Default('') id,
    @Default('5') String title,
    @Default('5') String description,
    @Default('6900') String price,
    @Default(false) bool selected,
  }) = _AdvertisingEntityEmpty;

  factory AdvertisingEntity.fromJson(Map<String, dynamic> json) =>
      _$AdvertisingEntityFromJson(json);
}
