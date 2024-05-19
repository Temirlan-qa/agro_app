part of 'theme.dart';

const _primary = Color.fromARGB(255, 92, 151, 65);
const _secondary = Color.fromARGB(255, 255, 213, 4);
const _black = Colors.black;
const _red = Color(0xfff44336);
const _white = Color(0xffffffff);
const _blue = Color.fromARGB(255, 33, 77, 153);
const _lightBlue = Colors.blue;
const _selectBlue = Color.fromARGB(255, 185, 215, 240);
const _navBar = Color(0xFF505050);
const _scaffoldBackground = Color.fromARGB(255, 233, 233, 233);
const _grey = Color.fromARGB(255, 117, 117, 117);
const _lightGrey = Color.fromARGB(255, 240, 238, 238);
const _semiLightGrey = Color.fromARGB(255, 185, 185, 185);
const _transparent = Colors.transparent;

extension ColorThemeDataExtension on ThemeData {
  Color get primary => _primary;
  Color get secondary => _secondary;
  Color get black => _black;
  Color get red => _red;
  Color get white => _white;
  Color get blue => _blue;
  Color get lightBlue => _lightBlue;
  Color get selectBlue => _selectBlue;
  Color get navBar => _navBar;
  Color get scaffoldBackground => _scaffoldBackground;
  Color get grey => _grey;
  Color get lightGrey => _lightGrey;
  Color get semiLightGrey => _semiLightGrey;
  Color get transparent => _transparent;
}
