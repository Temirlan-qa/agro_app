class ValidatorsHelper {
  static bool validatePhone({
    required String value,
    int? minLength,
    int? maxLength,
  }) {
    if (!isNumeric(value)) return false;
    if (minLength != null && maxLength != null) {
      return value.length >= minLength && value.length <= maxLength
          ? true
          : false;
    }
    return false;
  }

  static bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }
}
