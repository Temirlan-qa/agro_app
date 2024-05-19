import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/country_code_entity.dart';

part 'sign_up_state.freezed.dart';
part 'sign_up_state.g.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    @Default(false) bool isBtnPressed,
    @Default([]) List<CountryCodeEntity> countryCodeList,
  }) = _SignUpState;

  factory SignUpState.fromJson(Map<String, dynamic> json) =>
      _$SignUpStateFromJson(json);
}
