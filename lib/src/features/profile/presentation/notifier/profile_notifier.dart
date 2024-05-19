import 'package:agro_app/src/core/router/auth_provider.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/main_page/presentation/notifier/main_page_notifier.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/service/injectable/injectable_service.dart';
import '../../../../core/utils/helpers/popup_helper.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/request_models/update_password_request_model.dart';
import '../../domain/request_models/update_user_info_request_model.dart';
import '../../domain/usecase/get_user_info_use_case.dart';
import '../../domain/usecase/log_out_use_case.dart';
import '../../domain/usecase/update_password_use_case.dart';
import '../../domain/usecase/update_user_info_use_case.dart';
import 'profile_state.dart';

final profileNotifierProvider =
    StateNotifierProvider.autoDispose<ProfileNotifier, ProfileState>(
  (ref) {
    final logOutUseCase = getIt<LogOutUseCase>();
    // final resetPasswordUseCase = getIt<ResetPasswordUseCase>();
    final updatePasswordUseCase = getIt<UpdatePasswordUseCase>();
    final updateUserInfoUseCase = getIt<UpdateUserInfoUseCase>();
    final getUserInfoUseCase = getIt<GetUserInfoUseCase>();

    return ProfileNotifier(
      ref,
      logOutUseCase,
      updatePasswordUseCase,
      updateUserInfoUseCase,
      getUserInfoUseCase,
      // resetPasswordUseCase,
    );
  },
);

class ProfileNotifier extends StateNotifier<ProfileState> {
  final Ref _ref;
  late final BuildContext _context;
  final LogOutUseCase _logOutUseCase;
  final UpdateUserInfoUseCase _updateUserInfoUseCase;
  // final ResetPasswordUseCase _resetPasswordUseCase;
  final UpdatePasswordUseCase _updatePasswordUseCase;
  final GetUserInfoUseCase _getUserInfoUseCase;

  ProfileNotifier(
    this._ref,
    this._logOutUseCase,
    // this._resetPasswordUseCase,
    this._updatePasswordUseCase,
    this._updateUserInfoUseCase,
    this._getUserInfoUseCase,
  ) : super(ProfileState());

  void init(BuildContext context) {
    _context = context;
  }

  void getUpdateUserData(UserEntity userData) {
    state = state.copyWith(userInfo: userData);
  }

  Future<void> updateUserInfo(
    String email,
    String contactPhone,
    String fullName,
    String city,
  ) async {
    final trimmedEmail = email.trim();
    final trimmedContactPhone = contactPhone.trim();
    final trimmedCity = city.trim();

    state = state.copyWith(isBtnPressed: true);
    final requestModel = UpdateUserInfoRequestModel(
      email: trimmedEmail,
      contactPhone: trimmedContactPhone,
      fio: fullName,
      city: trimmedCity,
    );
    final result = await _updateUserInfoUseCase.call(requestModel);
    final resultUserInfo = await _getUserInfoUseCase();
    if (result.isFailure) {}
    if (result.isSuccessful &&
        result.data != null &&
        resultUserInfo.isSuccessful) {
      _ref
          .read(profileNotifierProvider.notifier)
          .getUpdateUserData(resultUserInfo.data!);
      _ref.read(authProvider.notifier).setUser(resultUserInfo.data!);

      Navigator.of(_context).pop();
    }
  }

  Future<void> logOut() async {
    // final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    // final String? accessToken = sharedPref.getString('accessToken');
    // final String? refreshToken = sharedPref.getString('refreshToken');
    state = state.copyWith(isBtnPressed: true);
    // final requestModel = LogOutRequestModel(
    //   accessToken: accessToken!,
    //   refreshToken: refreshToken!,
    // );
    // final result = await _logOutUseCase.call(requestModel);
    // if (result.isFailure) {
    //   state = state.copyWith(isBtnPressed: false);
    // }
    // if (result.isSuccessful && result.data != null) {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove('accessToken');
    await sharedPref.remove('refreshToken');
    _ref.read(authProvider.notifier).logOut();
    state = state.copyWith(isBtnPressed: false);
    _ref.read(mainPageNotifierProvider.notifier).changePage(0);
    _ref.read(productsPageNotifierProvider.notifier).refreshProducts();
    // }
  }

  // Future<void> resetPassword() async {
  //   final result = await _resetPasswordUseCase.call();
  //   if (result.data != null) {
  //     await PopupHelper().showPopup(
  //       _context,
  //       btnOkText: S.of(_context).ok,
  //       description: S.of(_context).passwordResetEmailSent,
  //       btnOkColor: _context.theme.primary,
  //       onPressOk: Navigator.of(_context).pop,
  //     );
  //   }
  // }

  // Future<void> updatePassword({
  //   required String code,
  //   required String newPassword,
  // }) async {
  //   final trimmedNewPassword = newPassword.trim();
  //   state = state.copyWith(isBtnPressed: true);

  //   final requestModel = UpdatePasswordRequestModel(
  //     code: code,
  //     newPassword: trimmedNewPassword,
  //   );

  //   final result = await _updatePasswordUseCase.call(requestModel);

  //   if (result.data != null || result.isSuccessful) {
  //     await PopupHelper().showPopup(
  //       _context,
  //       btnOkText: S.of(_context).ok,
  //       description: 'VSE GOOD',
  //       //S.of(_context).passwordResetEmailSent,
  //       btnOkColor: _context.theme.primary,
  //       onPressOk: Navigator.of(_context).pop,
  //     );
  //   }
  // }

  Future<void> updatePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    final trimmedOldPassword = oldPassword.trim();
    final trimmedNewPassword = newPassword.trim();
    final trimmedConfirmNewPassword = confirmNewPassword.trim();
    state = state.copyWith(isBtnPressed: true);

    if (trimmedNewPassword != trimmedConfirmNewPassword) {
      await PopupHelper().showPopup(
        _context,
        btnOkText: S.of(_context).tryAgain,
        description: S.of(_context).incorrectInfo,
        btnOkColor: _context.theme.primary,
        onPressOk: Navigator.of(_context).pop,
      );
    }
    final requestModel = UpdatePasswordRequestModel(
      oldPassword: trimmedOldPassword,
      newPassword: trimmedNewPassword,
      confirmNewPassword: trimmedConfirmNewPassword,
    );
    final result = await _updatePasswordUseCase.call(requestModel);

    if (result.data != null || result.isSuccessful) {
      await PopupHelper().showPopup(_context,
          btnOkText: S.of(_context).ok,
          description: S.of(_context).successfullyChanged,
          btnOkColor: _context.theme.primary, onPressOk: () {
        Navigator.of(_context).pop();
        Navigator.of(_context).pop();
      });
    }
  }
}
