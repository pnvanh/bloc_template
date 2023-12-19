import 'package:flutter/material.dart';

final class AppColors {
  AppColors._();

  static const gradient = LinearGradient(
    colors: [Color(0xFFA6D38D), Color(0xFFF06BA8)],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const transparent = Colors.transparent;
  static const black = Color(0xFF000000);
  static const white = Color(0xFFFFFFFF);
  static const twygsGreen = Color(0xFFA6D38D);
  static const darkGreen = Color(0xFF084F4B);
  static const lightGreen = Color(0xFFDCEED3);
  static const goGreen = Color(0xFF00A375);
  static const twygsPink = Color(0xFFF06BA8);
  static const darkPink = Color(0xFFFFE5ED);
  static const errorRed = Color(0xFFDE1414);
  static const alertYellow = Color(0xFFFFD166);
  static const jetBlack = Color(0xFF333333);
  static const dimGray = Color(0xFF808080);
  static const midGray = Color(0xFFCCCCCC);
  static const antiFlashWhite = Color(0xFFE6E7EB);
  static const antiFlashLite = Color(0xFFF2F3F7);
  static const seaSaltWhite = Color(0xFFFAFAFA);
  static const purple = Color(0xFF9B7BFF);
  static const darkBlue = Color(0xFF012BC2);
  static const playfulGreen = Color(0xFF50FFAF);
  static const secondaryHover = Color(0xFFFFD6EF);
}
