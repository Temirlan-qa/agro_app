import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomToggleSwitcher extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final TextStyle? textStyle;
  final ValueSetter<int> onPressed;
  final List<bool> toggleGroup;
  final Color? fillColor;
  final Color? selectedColor;
  const CustomToggleSwitcher({
    required this.textLeft,
    required this.textRight,
    required this.toggleGroup,
    required this.onPressed,
    this.fillColor,
    this.selectedColor,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ToggleButtons(
        isSelected: toggleGroup,
        borderRadius: BorderRadius.circular(10),
        fillColor: fillColor ?? context.theme.primary,
        selectedColor: selectedColor ?? context.theme.white,
        constraints: BoxConstraints.expand(width: constraints.maxWidth / 2.2),
        onPressed: onPressed,
        children: [
          Text(textLeft, style: textStyle),
          Text(textRight, style: textStyle),
        ],
      ),
    );
  }
}
