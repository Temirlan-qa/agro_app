import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool autoCorrect;
  final String? hintText;
  final int? hintMaxLines;
  final String errorText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextAlign textAlign;
  final TextStyle? style;
  final ValueChanged<String>? onChanged;
  final int? maxLength;
  final TextInputType? keyboardType;
  final bool hasError;
  final bool autoFocus;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final bool enabled;
  final bool hasWarning;
  final bool expand;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final String? prefixText;
  final FocusNode? focusNode;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final int? minLines;
  final Widget? suffix;
  final bool multiline;

  const CustomTextField({
    Key? key,
    this.controller,
    this.autoCorrect = true,
    this.hintText,
    this.hintMaxLines,
    this.errorText = '',
    this.suffixIcon,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.style,
    this.onChanged,
    this.maxLength,
    this.keyboardType,
    this.hasError = false,
    this.autoFocus = false,
    this.textInputAction,
    this.onFieldSubmitted,
    this.enabled = true,
    this.hasWarning = false,
    this.expand = false,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.prefixText,
    this.focusNode,
    this.contentPadding,
    this.maxLines = 1,
    this.minLines,
    this.suffix,
    this.multiline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          enabled: enabled,
          autofocus: autoFocus,
          autocorrect: autoCorrect,
          controller: controller,
          focusNode: focusNode,
          expands: expand,
          inputFormatters: inputFormatters,
          textCapitalization: textCapitalization,
          maxLines: multiline ? maxLines ?? 5 : 1,
          minLines: multiline ? minLines ?? 5 : 1,
          keyboardType: multiline ? TextInputType.multiline : keyboardType,
          style: style?.copyWith(
                color: hasError ? context.theme.red : null,
              ) ??
              TextStyle(
                fontSize: 15,
                color: hasError ? context.theme.red : null,
              ),
          maxLength: maxLength,
          textAlign: textAlign,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            hintMaxLines: hintMaxLines,
            counterText: '',
            fillColor: hasError ? context.theme.red.withOpacity(0.15) : null,
            prefixText: prefixText,
            contentPadding: contentPadding,
            prefixStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            suffix: suffix,
            suffixIcon: suffixIcon,
            suffixIconConstraints:
                const BoxConstraints(minWidth: 0, minHeight: 0),
            enabledBorder: hasError || hasWarning
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: context.theme.red),
                    borderRadius: BorderRadius.circular(10),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: context.theme.semiLightGrey),
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
            focusedBorder: hasError
                ? OutlineInputBorder(
                    borderSide: BorderSide(color: context.theme.red),
                    borderRadius: BorderRadius.circular(10),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: context.theme.semiLightGrey),
                  ),
          ),
          obscureText: obscureText,
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
        ],
      ],
    );
  }
}
