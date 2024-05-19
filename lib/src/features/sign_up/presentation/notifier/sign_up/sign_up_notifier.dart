import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/service/injectable/injectable_service.dart';
import '../../../domain/request_models/sign_up_request_model.dart';
import '../../../domain/usecase/sign_up_use_case.dart';
import 'sign_up_state.dart';

final signUpNotifierProvider =
    StateNotifierProvider.autoDispose<SignUpNotifier, SignUpState>(
  (ref) {
    final signUpUseCase = getIt<SignUpUseCase>();
    return SignUpNotifier(ref, signUpUseCase);
  },
);

class SignUpNotifier extends StateNotifier<SignUpState> {
  final Ref _ref;
  late final BuildContext _context;

  final SignUpUseCase _signUpUseCase;

  SignUpNotifier(
    this._ref,
    this._signUpUseCase,
  ) : super(SignUpState());

  void init(BuildContext context) {
    _context = context;
  }

  Future<void> signUpForOrganization({
    required String email,
    required bool roleType,
    required String bin,
    required String username,
    required String password,
    required String fio,
    required String socLink,
    required String contactPhone,
    required String address,
    required String city,
    required String country,
  }) async {
    state = state.copyWith(isBtnPressed: true);
    final trimmedEmail = email.trim();
    final trimmedBin = bin.trim();
    final trimmedUsername = username.trim();
    final trimmedPassword = password.trim();
    final trimmedSocLink = socLink.trim();
    final trimmedContactPhone = contactPhone.trim();
    final trimmedAddress = address.trim();
    final trimmedCity = city.trim();
    final trimmedCountry = country.trim();

    final requestModel = SignUpRequestModel(
      username: trimmedUsername,
      password: trimmedPassword,
      email: trimmedEmail,
      bin: trimmedBin,
      roleType: roleType ? 'INDIVIDUAL' : 'ORGANIZATION',
      fio: fio,
      socLink: trimmedSocLink,
      contactPhone: trimmedContactPhone,
      address: trimmedAddress,
      country: trimmedCountry,
      city: trimmedCity,
    );
    final NavigatorState nav = Navigator.of(_context);
    if (trimmedUsername.isEmpty ||
        trimmedPassword.isEmpty ||
        fio.isEmpty ||
        trimmedContactPhone.isEmpty ||
        trimmedAddress.isEmpty ||
        trimmedBin.isEmpty ||
        trimmedCity.isEmpty ||
        trimmedCountry.isEmpty) {
      await PopupHelper().showPopup(
        _context,
        title: S.of(_context).errorDuringRegistration,
        btnOkText: S.of(_context).tryAgain,
        description: S.of(_context).errorFillingData,
        btnOkColor: _context.theme.primary,
        onPressOk: nav.pop,
      );
      state = state.copyWith(isBtnPressed: false);
    } else {
      final result = await _signUpUseCase.call(requestModel);
      if (result.isFailure) {
        String displatError = '';
        if (result.failure?.message.toLowerCase() == 'bad request') {
          displatError = S.of(_context).userAlreadyTaken;
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
      nav.pop();
    }
  }

  Future<void> signUpForIndividual({
    required String email,
    required bool roleType,
    required String username,
    required String password,
    required String fio,
    required String socLink,
    required String contactPhone,
    required String city,
    required String country,
  }) async {
    state = state.copyWith(isBtnPressed: true);
    final trimmedEmail = email.trim();
    final trimmedUsername = username.trim();
    final trimmedPassword = password.trim();
    final trimmedSocLink = socLink.trim();
    final trimmedContactPhone = contactPhone.trim();
    final trimmedCountry = country.trim();

    final requestModel = SignUpRequestModel(
      username: trimmedUsername,
      password: trimmedPassword,
      email: trimmedEmail,
      roleType: roleType ? 'INDIVIDUAL' : 'ORGANIZATION',
      fio: fio,
      socLink: trimmedSocLink,
      contactPhone: trimmedContactPhone,
      city: city,
      country: trimmedCountry,
    );
    final NavigatorState nav = Navigator.of(_context);

    if (!EmailValidator.validate(email)) {
      await PopupHelper().showPopup(
        _context,
        title: S.of(_context).titleWrongEmail,
        btnOkText: S.of(_context).tryAgain,
        description: S.of(_context).wrongEmail,
        btnOkColor: _context.theme.primary,
        onPressOk: nav.pop,
      );
      state = state.copyWith(isBtnPressed: false);
    }

    if (trimmedEmail.isEmpty ||
        trimmedUsername.isEmpty ||
        trimmedPassword.isEmpty ||
        fio.isEmpty ||
        trimmedSocLink.isEmpty ||
        trimmedContactPhone.isEmpty ||
        city.isEmpty ||
        trimmedCountry.isEmpty) {
      await PopupHelper().showPopup(
        _context,
        title: S.of(_context).errorDuringRegistration,
        btnOkText: S.of(_context).tryAgain,
        description: S.of(_context).errorFillingData,
        btnOkColor: _context.theme.primary,
        onPressOk: nav.pop,
      );
      state = state.copyWith(isBtnPressed: false);
    } else {
      final result = await _signUpUseCase.call(requestModel);
      if (result.isFailure) {
        String displatError = '';
        if (result.failure?.message.toLowerCase() == 'bad request') {
          displatError = S.of(_context).userAlreadyTaken;
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
      nav.pop();
    }
  }
}
