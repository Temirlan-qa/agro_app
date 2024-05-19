import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class CustomSearchAppBar extends StatelessWidget {
  final Widget? leadingIcon;
  final TextEditingController controller;
  final ValueSetter<String> onChanged;
  final FocusNode? focusNode;

  const CustomSearchAppBar({
    required this.controller,
    required this.onChanged,
    this.leadingIcon,
    this.focusNode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          if (leadingIcon != null)
            Row(
              children: [leadingIcon!, const SizedBox(width: 10)],
            ),
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              onChanged: onChanged,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: S.current.writeSomeThing,
                hintStyle: context.theme.textStyles.regular.copyWith(
                  color: context.theme.grey,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: context.theme.grey,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
