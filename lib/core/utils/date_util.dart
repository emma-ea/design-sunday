class DateUtil {

  DateUtil._();
  
  static String getFullDate() {
    final date = DateTime.now();
    final day = formatDay(date.day);
    final month = formatMonth(date.month);
    return '$day $month, ${date.year}';
  }

  static String formatDay(int day) {
    if (day <= 0 || day > 31) {
      throw FormatException('Invalid day for date', day);
    }
    switch(day) {
      case 1:
      case 21:
      case 31:
        return '${day}st';
      case 2:
      case 22:
        return '${day}nd';
      case 3:
      case 23:
        return '${day}rd';
      default:
        return '${day}th';
    }
  }

  static String formatMonth(int month) {
    if (month <= 0 || month > 12) {
      throw FormatException('Invalid month for date', month);
    }
    final List<String> months = [
      '', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'
    ];
    return months[month];
  }

}