import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoListTileWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String? svgPath;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry paddingIcon;
  final Color? iconColor;
  final Widget? icon;
  final String text;
  final TextStyle? textStyle;

  const InfoListTileWidget({
    required this.onTap,
    this.svgPath,
    super.key,
    this.width,
    required this.text,
    this.textStyle,
    this.height,
    this.paddingIcon = EdgeInsets.zero,
    this.iconColor,
    this.icon,
  }) : assert(svgPath != null || icon != null);

  @override
  Widget build(BuildContext context) {
    final iconColor = this.iconColor ?? context.theme.white;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: paddingIcon,
              child: svgPath != null
                  ? SvgPicture.asset(
                      svgPath!,
                      width: width,
                      height: height,
                      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                    )
                  : icon,
            ),
            const SizedBox(width: 16),
            Text(
              text,
              style: textStyle ?? const TextStyle(fontSize: 18),
            ),
            const Spacer(),
            Icon(
              Icons.chevron_right_outlined,
              color: context.theme.primary,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
