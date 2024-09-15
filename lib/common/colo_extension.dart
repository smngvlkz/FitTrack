import 'package:flutter/material.dart';

class TColor {
  static const Color primaryColor1 = Color(0xFF92A3FD);
  static const Color primaryColor2 = Color(0xFF9DCEFF);
  static const Color secondaryColor1 = Color(0xFF588BF2);
  static const Color secondaryColor2 = Color(0xFFEEA4CE);
  static const Color black = Color(0xFF1D1617);
  static const Color grey = Color(0xFF786F72);
  static const Color white = Colors.white;

  static List<Color> get primaryGradient => [primaryColor2, primaryColor1];
  static List<Color> get secondaryGradient =>
      [secondaryColor1, secondaryColor2];
  static Color get lightGrey => const Color(0xffF7F8F8);
}
