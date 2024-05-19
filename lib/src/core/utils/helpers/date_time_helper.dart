import 'package:intl/intl.dart';

class DateTimeHelper {
  static String dayMonthFormat = 'dd MMM';
  static String fullDateFormat = 'HH:mm dd.MM.yyyy';
  static String dayMonthYearFormat = 'dd.MM.yyyy';
  static String onlyYearFormat = 'yyyy';

  static String? productPublished(
    DateTime? dateTime, {
    String? customPattern,
  }) {
    if (dateTime == null) return null;
    return DateFormat(customPattern ?? fullDateFormat).format(dateTime);
  }

  static String convertListIntToDateTime(
    List<int> dateList, {
    String? customPattern,
  }) {
    if (dateList.length < 5) {
      return '';
    }

    final year = dateList[0];
    final month = dateList[1];
    final day = dateList[2];
    final hour = dateList[3];
    final minute = dateList[4];

    final dateTime = DateTime(year, month, day, hour, minute);

    return DateFormat(customPattern ?? fullDateFormat).format(dateTime);
  }
}
