import 'package:flutter/services.dart';

import '../formatters/card_input_formatter.dart';

class FormatterHelper {
  static TextInputFormatter get phoneNumberSeparatorHelperFormatter {
    return CardFormatter(sample: '### ### ####', separator: ' ');
  }

  static TextInputFormatter get digitsHelperFormatter =>
      FilteringTextInputFormatter.digitsOnly;
}
