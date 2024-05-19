import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomFieldGroup extends StatelessWidget {
  final String label;
  final String? description;
  final bool requiredField;
  final bool isOptional;
  final bool isOptionalLineBreak;
  final Widget child;

  const CustomFieldGroup({
    super.key,
    required this.label,
    required this.child,
    this.description,
    this.requiredField = false,
    this.isOptional = false,
    this.isOptionalLineBreak = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: context.theme.textStyles.regular.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(text: label),
              if (requiredField)
                const TextSpan(
                  text: ' *',
                  style: TextStyle(fontSize: 16, color: Colors.red),
                ),
              if (isOptional)
                TextSpan(
                  text:
                      '${isOptionalLineBreak ? '\n' : ' '}${S.of(context).isOptionalInBrackets}',
                  style: context.theme.textStyles.smallTips.copyWith(
                    color: context.theme.lightGrey,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        if (description != null) ...[
          const SizedBox(height: 5),
          Text(
            description!,
            style: context.theme.textStyles.smallTips.copyWith(
              color: context.theme.lightGrey,
            ),
          ),
        ],
        child,
      ],
    );
  }
}
