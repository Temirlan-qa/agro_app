import 'package:flutter/material.dart';

part 'colors.dart';
part 'text_styles.dart';
part 'theme_context_extension.dart';

class MaterialAppTheme {
  static final theme = ThemeData(
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.resolveWith((_) => _black),
      fillColor: MaterialStateProperty.resolveWith((_) => _transparent),
      side: AlwaysActiveBorderSide(),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: _white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        fixedSize: MaterialStateProperty.all(const Size.fromHeight(52)),
        backgroundColor: MaterialStateProperty.all(_primary),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      errorStyle: const TextStyle(height: 0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _primary),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _red),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _red),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static final light = theme.copyWith(
    brightness: Brightness.light,
  );

  static final dark = theme.copyWith(
    brightness: Brightness.dark,
  );
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) => const BorderSide(color: _black);
}
