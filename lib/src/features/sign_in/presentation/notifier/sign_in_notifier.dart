import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:agro_app/src/features/favorites/presentation/notifier/favorites_page_notifier.dart';
import 'package:agro_app/src/features/main_page/presentation/notifier/main_page_notifier.dart';
import 'package:agro_app/src/features/products/presentation/notifier/products_page_notifier.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../domain/request_models/sign_in_request_model.dart';
import '../../domain/usecase/organization_sign_up_use_case.dart';
import 'sign_in_state.dart';

final signInNotifierProvider =
    StateNotifierProvider.autoDispose<SignInNotifier, SignInState>(
  (ref) {
    final organizationSignInUseCase = getIt<OrganizationSignInUseCase>();
    return SignInNotifier(ref, organizationSignInUseCase);
  },
);

class SignInNotifier extends StateNotifier<SignInState> {
  final Ref _ref;
  late final BuildContext _context;
  final OrganizationSignInUseCase _organizationSignInUseCase;

  SignInNotifier(
    this._ref,
    this._organizationSignInUseCase,
  ) : super(SignInState());

  void init(BuildContext context) {
    _context = context;
  }

  Future<void> signInForOrganization({
    required String username,
    required String password,
  }) async {
    state = state.copyWith(isBtnPressed: true);
    final trimmedUsername = username.trim();
    final trimmedPassword = password.trim();
    final requestModel = SignInRequestModel(
      username: trimmedUsername,
      password: trimmedPassword,
    );
    final NavigatorState nav = Navigator.of(_context);
    if (trimmedUsername == '' || trimmedPassword == '') {
      await PopupHelper().showPopup(
        _context,
        btnOkText: S.of(_context).tryAgain,
        description: S.of(_context).emptyFieldsInSignIn,
        btnOkColor: _context.theme.primary,
        onPressOk: nav.pop,
      );
      state = state.copyWith(isBtnPressed: false);
    }
    final result = await _organizationSignInUseCase.call(requestModel);
    if (result.isFailure && trimmedUsername != '' && trimmedPassword != '') {
      String displatError = '';
      if (result.failure?.message.toLowerCase() == 'bad request') {
        displatError = S.of(_context).usernameOrPasswordIsNotValid;
      } else {
        displatError = S.of(_context).errorTryAgainLater;
      }
      await PopupHelper().showPopup(
        _context,
        btnOkText: S.of(_context).tryAgain,
        description: displatError,
        btnOkColor: _context.theme.primary,
        onPressOk: nav.pop,
      );
      state = state.copyWith(isBtnPressed: false);
    }

    if (result.isSuccessful && result.data != null) {
      final SharedPreferences sharedPref =
          await SharedPreferences.getInstance();
      await sharedPref.setString('accessToken', result.data!.accessToken);
      await sharedPref.setString('refreshToken', result.data!.refreshToken);
      _ref.read(mainPageNotifierProvider.notifier).getUserInfo();
      nav.pop();
    }
    _refreshLists();
  }

  void _refreshLists() {
    _ref.read(productsPageNotifierProvider.notifier).getProducts();
    _ref.read(favoritePageNotifierProvider.notifier).getProducts();
  }
}
