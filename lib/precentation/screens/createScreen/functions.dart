import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateScreenFunctions{
  static String dateFormator(DateTime dateTime){
    return DateFormat('dd MMM yyyy').format(dateTime);
  }
  static String timeFormator(DateTime dateTime){
    return DateFormat('h:mm a').format(dateTime);
  }
  static DateTime convertTimeOfDayToDateTime({required TimeOfDay timeOfDay}){
    final now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      timeOfDay.hour,
      timeOfDay.minute,
    );
  }
}