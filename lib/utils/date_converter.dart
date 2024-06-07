import 'package:intl/intl.dart';

class DateFormatter {
  String format(String date) {
    DateTime dateTime = DateTime.parse(date);
    return DateFormat('yyyy-MM-dd – hh:mm a').format(dateTime);
  }
}