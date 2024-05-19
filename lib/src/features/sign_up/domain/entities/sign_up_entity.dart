import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_entity.freezed.dart';
part 'sign_up_entity.g.dart';

@freezed
class SignUpEntity with _$SignUpEntity {
  factory SignUpEntity({
    required String description,
  }) = _SignUpEntity;

  factory SignUpEntity.empty() => SignUpEntity(
        description: '',
      );

  factory SignUpEntity.fromJson(Map<String, dynamic> json) =>
      _$SignUpEntityFromJson(json);
}
