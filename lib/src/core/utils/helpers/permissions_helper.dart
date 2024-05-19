import 'dart:io';

import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/utils/helpers/popup_helper.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionsHelper {
  final BuildContext context;
  final Permission permission;
  bool _isShowedPopupThatAccessDenied = false;

  bool get _isCameraPermission => permission == Permission.camera;

  bool get getIsShowedPopupThatAccessDenied => _isShowedPopupThatAccessDenied;

  PermissionsHelper(this.context, {required this.permission});

  Future<bool> getPermission() async {
    _isShowedPopupThatAccessDenied = false;
    if (Platform.isIOS) {
      return await _getPermissionForIos();
    } else {
      return await _getPermissionForAndroid();
    }
  }

  Future<bool> _getPermissionForIos() async {
    bool isPermanentlyDenied = await _isPermanentlyDenied();
    PermissionStatus requestStatus = await _requestPermission();

    if (isPermanentlyDenied && requestStatus.isPermanentlyDenied) {
      await _showPopup();
    }

    return requestStatus.isGranted;
  }

  Future<bool> _getPermissionForAndroid() async {
    bool shouldShowRequestRationale = await _shouldShowRequestRationale();

    PermissionStatus requestStatus = await _requestPermission();

    if (!shouldShowRequestRationale && requestStatus.isPermanentlyDenied) {
      await _showPopup();
    }
    return await permission.isGranted;
  }

  Future<PermissionStatus> _requestPermission() async {
    return await permission.request();
  }

  Future<void> _showPopup() async {
    if (_isCameraPermission) {
      await _showPopupThatAccessDenied(
        title: S.current.permissionDialogueCameraAccessDeniedTitle,
        subTitle: S.current.permissionDialogueCameraAccessDeniedSubTitle,
      );
    }
  }

  Future<void> _showPopupThatAccessDenied({
    required String title,
    required String subTitle,
  }) async {
    bool needOpenSettings = false;
    _isShowedPopupThatAccessDenied = true;
    await PopupHelper().showPopup(
      context,
      title: title,
      description: subTitle,
      btnOkText: S.of(context).permissionDialogueButtonMoveToSettings,
      btnCancelText: S.of(context).cancel,
      onPressOk: () {
        needOpenSettings = true;
        Navigator.of(context).pop();
      },
      onPressCancel: () => Navigator.of(context).pop(),
    );
    if (needOpenSettings) {
      await _openAppSettings();
    }
  }

  Future<void> _openAppSettings() async {
    await AppSettings.openAppSettings();
  }

  Future<bool> _isPermanentlyDenied() async {
    return await permission.isPermanentlyDenied;
  }

  Future<bool> _shouldShowRequestRationale() async {
    return await permission.shouldShowRequestRationale;
  }

  Future<bool> hasAccess() async {
    return await permission.isGranted;
  }
}
