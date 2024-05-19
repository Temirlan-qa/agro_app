import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {
  final ValueSetter<String?> onChanged;
  final List<String> items;
  final String? value;
  final String hintText;
  final String errorText;
  final bool hasWarning;
  final bool hasError;

  const DropDownWidget({
    super.key,
    this.hintText = '',
    this.value,
    this.errorText = '',
    this.hasError = false,
    this.hasWarning = false,
    required this.onChanged,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          value: value,
          decoration: InputDecoration(
            fillColor: hasError ? context.theme.red.withOpacity(0.15) : null,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color:
                    hasError ? context.theme.red : context.theme.semiLightGrey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: hasError || hasWarning
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                      color: context.theme.red,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )
                : OutlineInputBorder(
                    borderSide: BorderSide(
                        color: context.theme.semiLightGrey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
            disabledBorder: hasError || hasWarning
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: context.theme.red),
                    borderRadius: BorderRadius.circular(10),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: context.theme.semiLightGrey),
                  ),
            errorBorder: hasError
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: context.theme.red),
                    borderRadius: BorderRadius.circular(10),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: context.theme.semiLightGrey),
                  ),
          ),
          hint: Text(hintText),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    value,
                    style: context.theme.textStyles.cardRegular,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Divider(
                      color: context.theme.semiLightGrey,
                      thickness: 1,
                      height: 1,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
        if (hasError && errorText.isNotEmpty) ...[
          const SizedBox(height: 5),
          Text(
            errorText,
            style: TextStyle(
              fontSize: 13,
              color: context.theme.red,
            ),
          ),
        ]
      ],
    );
  }
}
