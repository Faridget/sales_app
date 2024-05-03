import 'package:flutter/material.dart';

class AppColors {
  static Color primary = const Color(0xff4E5AE8);
  static Color orange = const Color(0xffFF8746);
  static Color red = const Color(0xffFF4667);
  static Color gray = const Color(0xffB4AAAA);
  static Color black = const Color(0xff121212);
  static Color white = Colors.white;
  static const Color gradientColorStart = Color(0xff00b6f3);
  static const Color gradientColorEnd = Color(0xff0184dc);

  static const Gradient fabGradient = LinearGradient(
      colors: [gradientColorStart, gradientColorEnd],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
