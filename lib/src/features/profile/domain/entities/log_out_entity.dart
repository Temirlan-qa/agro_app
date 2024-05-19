import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_out_entity.freezed.dart';
part 'log_out_entity.g.dart';

@freezed
class LogOutEntity with _$LogOutEntity {
  factory LogOutEntity({
    required String description,
  }) = _LogOutEntity;

  factory LogOutEntity.empty() => LogOutEntity(
        description: '',
      );

  factory LogOutEntity.fromJson(Map<String, dynamic> json) =>
      _$LogOutEntityFromJson(json);
}
