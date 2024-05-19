import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvatarPickerWidget extends StatelessWidget {
  final VoidCallback onAvatarTap;
  const AvatarPickerWidget({
    required this.onAvatarTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.theme.grey,
          ),
          child: Icon(
            Icons.person,
            size: 80,
            weight: 80,
            color: context.theme.white,
          ),
        ),
        GestureDetector(
          onTap: onAvatarTap,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.theme.white.withOpacity(0.35),
            ),
            width: 80,
            height: 80,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/camera.svg',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
