import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';
part 'sign_in_state.g.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState({
    @Default('') String username,
    @Default('') String password,
    @Default(false) bool isBtnPressed,
  }) = _SignInState;

  factory SignInState.fromJson(Map<String, dynamic> json) =>
      _$SignInStateFromJson(json);
}
