import 'package:intl/intl.dart';

class Formattors {
  static String dateFormator(DateTime dateTime) {
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  static String timeFormator(DateTime dateTime) {
    return DateFormat('h:mm a').format(dateTime);
  }
}
