import 'dart:ui';

import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../generated/l10n.dart';
import 'button_widget.dart';

class SelectImageSourceWidget extends StatelessWidget {
  final VoidCallback onGallerySourceTap;
  final VoidCallback onCameraSourceTap;
  final VoidCallback onCancel;
  final bool addImg;
  final XFile? imageFileList;
  const SelectImageSourceWidget({
    required this.onGallerySourceTap,
    required this.onCameraSourceTap,
    required this.onCancel,
    required this.addImg,
    required this.imageFileList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: addImg && imageFileList == null || addImg && imageFileList == [],
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: context.theme.black.withOpacity(0.2),
          child: Column(
            children: [
              const Spacer(),
              CupertinoButton(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                pressedOpacity: 0.8,
                color: context.theme.white,
                padding: EdgeInsets.zero,
                onPressed: onGallerySourceTap,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/upload.svg',
                        width: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        S.current.selectFromGallery,
                        style: TextStyle(
                          color: context.theme.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                color: context.theme.grey,
              ),
              CupertinoButton(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                pressedOpacity: 0.8,
                color: context.theme.white,
                padding: EdgeInsets.zero,
                onPressed: onCameraSourceTap,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/camera.svg',
                        width: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        S.current.takePhoto,
                        style: TextStyle(
                          color: context.theme.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              BtnWidget(
                onPressed: onCancel,
                text: S.current.cancel,
                textStyle: TextStyle(
                  fontSize: 16,
                  color: context.theme.black,
                ),
                color: context.theme.white,
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
