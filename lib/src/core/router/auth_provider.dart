import 'package:agro_app/src/features/profile/domain/entities/user_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, bool>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  UserEntity? _userEntity;
  UserEntity? get user => _userEntity;

  void setUser(UserEntity val) {
    _userEntity = val;
    state = true;
  }

  void logOut() {
    _userEntity = null;
    state = false;
  }
}
