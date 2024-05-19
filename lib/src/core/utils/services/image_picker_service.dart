import 'dart:io';

import 'package:agro_app/src/core/utils/helpers/permissions_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

final imagePickService =
    StateNotifierProvider.autoDispose<ImagePickService, ImagePickState>(
  (ref) => ImagePickService(ref),
);

class ImagePickService extends StateNotifier<ImagePickState> {
  final Ref ref;

  final ImagePicker _picker = ImagePicker();
  final ImageCropper _cropper = ImageCropper();

  ImagePickService(this.ref) : super(ImagePickState());

  Future<String> takePhoto(
    BuildContext context,
  ) async {
    if (await checkPermission(context, Permission.camera)) {
      final photo = await _picker.pickImage(source: ImageSource.camera);
      if (photo != null) return await crop(photo.path);
    }
    return '';
  }

  Future<String> takePicture(BuildContext context) async {
    final photo = await _picker.pickImage(source: ImageSource.gallery);
    if (photo != null) return await crop(photo.path);
    return '';
  }

  Future<bool> checkPermission(
      BuildContext context, Permission permission) async {
    if (permission == Permission.photos && Platform.isIOS) return true;
    return await hasPermissions(context, permission);
  }

  Future<String> crop(String sourcePath) async {
    final croppedImage = await _cropper.cropImage(
      sourcePath: sourcePath,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
      ],
    );
    return croppedImage != null ? croppedImage.path : '';
  }

  Future<bool> hasPermissions(
      BuildContext context, Permission permission) async {
    return PermissionsHelper(context, permission: permission).getPermission();
  }

  Future<void> getLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.files != null) {
      for (final XFile file in response.files!) {
        state = state.copyWith(imagePath: file.path);
      }
    }
  }
}

class ImagePickState {
  final String imagePath;

  ImagePickState({this.imagePath = ''});

  ImagePickState copyWith({String? imagePath}) =>
      ImagePickState(imagePath: imagePath ?? this.imagePath);
}
