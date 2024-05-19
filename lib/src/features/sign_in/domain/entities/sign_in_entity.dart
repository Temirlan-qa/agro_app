import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_entity.freezed.dart';
part 'sign_in_entity.g.dart';

@freezed
class SignInEntity with _$SignInEntity {
  factory SignInEntity({
    required String accessToken,
    required String refreshToken,
  }) = _SignInEntity;

  factory SignInEntity.empty() => SignInEntity(
        accessToken: '',
        refreshToken: '',
      );

  factory SignInEntity.fromJson(Map<String, dynamic> json) =>
      _$SignInEntityFromJson(json);
}
