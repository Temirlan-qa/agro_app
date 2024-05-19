import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;
  final TextStyle? textStyle;
  final Widget? leading;
  final double height;
  final Color? backgroundColor;
  final bool? centerTitle;

  const CustomAppBar({
    super.key,
    required this.appBarText,
    this.backgroundColor,
    this.centerTitle,
    this.leading,
    this.textStyle,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? context.theme.white,
      leading: leading,
      elevation: 0,
      title: Text(
        appBarText,
        style: textStyle ?? TextStyle(color: context.theme.primary),
      ),
      centerTitle: centerTitle ?? true,
    );
  }
}
