import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String? subTitle;
  final TextStyle? subTitleStyle;
  final Color? textColor;
  final double titleFontSize;
  final Color? buttonColor;
  final Color? disableColor;
  final Color? disableTextColor;
  final String? icon;
  final double height;
  final String? suffixIcon;
  final Color? suffixIconColor;
  final double borderRadius;
  final Color? borderColor;
  final MaterialTapTargetSize? tapTargetSize;
  final bool disable;
  final double borderWidth;
  final Color? progressIndicatorColor;
  final bool showProgressIndicator;

  const CustomButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.subTitle,
    this.textColor,
    this.titleFontSize = 16,
    this.buttonColor,
    this.disableColor,
    this.disableTextColor,
    this.icon,
    this.height = 52,
    this.suffixIcon,
    this.suffixIconColor,
    this.borderRadius = 10,
    this.tapTargetSize,
    this.borderColor,
    this.disable = false,
    this.borderWidth = 1,
    this.progressIndicatorColor,
    this.showProgressIndicator = false,
    this.subTitleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disable ? () {} : onTap,
      style: ElevatedButton.styleFrom(
        padding:
            subTitle != null ? const EdgeInsets.symmetric(vertical: 7) : null,
        backgroundColor: disable ? disableColor ?? Colors.grey : buttonColor,
        side: borderColor != null
            ? BorderSide(
                color: borderColor!,
                width: borderWidth,
              )
            : null,
        maximumSize: Size.fromHeight(height),
        minimumSize: Size(64, height),
        tapTargetSize: tapTargetSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        splashFactory: disable ? NoSplash.splashFactory : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            SvgPicture.asset(
              icon!,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
          ],
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: disable
                                ? disableTextColor ?? Colors.grey[700]
                                : textColor ?? Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      if (showProgressIndicator) ...[
                        SizedBox(
                          width: 18.0,
                          height: 18.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 3.0,
                            color: progressIndicatorColor,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (subTitle != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    subTitle!,
                    style: subTitleStyle ??
                        TextStyle(
                          fontSize: 13,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ],
            ),
          ),
          if (suffixIcon != null) ...[
            const SizedBox(width: 3),
            SvgPicture.asset(
              suffixIcon!,
              color: disable ? Colors.grey[700] : suffixIconColor,
            ),
          ],
        ],
      ),
    );
  }
}
