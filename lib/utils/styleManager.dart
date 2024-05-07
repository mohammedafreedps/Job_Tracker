import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color.fromARGB(255, 34, 40, 49);
  static const Color secondaryColor = Color.fromARGB(255, 250, 246, 240);
  static const Color notSelectColor = Color.fromARGB(255, 140, 140, 140);
  static const Color selectColor = Color.fromARGB(255, 39, 55, 77);
}

class TextStyles{
  static const TextStyle bold = TextStyle(fontWeight: FontWeight.bold,color: AppColors.secondaryColor);
  static const TextStyle normal = TextStyle(fontWeight: FontWeight.bold,color: AppColors.secondaryColor);
  static const TextStyle boldPri = TextStyle(fontWeight: FontWeight.bold,color: AppColors.primaryColor);
  static const TextStyle normalPri = TextStyle(fontWeight: FontWeight.bold,color: AppColors.primaryColor);
}

class FontSizes{
  static const double mainHeading = 35;
}

class Paddings{
  static const double page = 10;
}