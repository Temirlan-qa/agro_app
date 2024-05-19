part of 'theme.dart';

class TextStyles {
  static const h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 32 / 24,
    color: Colors.white,
  );
  static const h2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static const h3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Color.fromARGB(255, 53, 118, 23),
  );
  static const h4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static const h5 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const subtitles = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 20 / 16,
    color: Colors.black,
  );
  static const tips = TextStyle(
    fontSize: 15,
    color: Colors.black,
  );
  static const cardRegular = TextStyle(
    fontSize: 15,
    height: 18 / 15,
    color: Colors.black,
  );
  static const regular = TextStyle(
    fontSize: 16,
    height: 22 / 20,
    color: Colors.black,
  );
  static const description = TextStyle(
    fontSize: 14,
    height: 17 / 14,
    color: Colors.black,
  );
  static const smallTips = TextStyle(
    fontSize: 12,
    color: Colors.black,
  );
}

class AppTextStyles {
  TextStyle get h1 => TextStyles.h1;
  TextStyle get h2 => TextStyles.h2;
  TextStyle get h3 => TextStyles.h3;
  TextStyle get h4 => TextStyles.h4;
  TextStyle get h5 => TextStyles.h5;
  TextStyle get subtitles => TextStyles.subtitles;
  TextStyle get tips => TextStyles.tips;
  TextStyle get cardRegular => TextStyles.cardRegular;
  TextStyle get regular => TextStyles.regular;
  TextStyle get description => TextStyles.description;
  TextStyle get smallTips => TextStyles.smallTips;
}

extension TextStyleThemeDataExtension on ThemeData {
  AppTextStyles get textStyles => AppTextStyles();
}
