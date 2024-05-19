import 'package:flutter/services.dart';

List<TextInputFormatter>? yearOfHarvestFormatter = [
  LengthLimitingTextInputFormatter(4),
  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
];