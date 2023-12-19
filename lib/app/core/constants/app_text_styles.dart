import 'package:bloc_template/app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

enum AppFontFamily { nunito }

enum AppFontWeight {
  light(fontWeight: FontWeight.w300),
  regular(fontWeight: FontWeight.w400),
  semiBold(fontWeight: FontWeight.w600),
  extraBold(fontWeight: FontWeight.w800),
  black(fontWeight: FontWeight.w900);

  const AppFontWeight({
    required this.fontWeight,
  });

  final FontWeight fontWeight;
}

final class AppTextStyles {
  const AppTextStyles._();
  static NunitoStyles style = NunitoStyles();
}

final class NunitoStyles {
  final body1Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final body1Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final body1SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final body1ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final body1Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final body2Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 28,
  );

  final body2Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 28,
  );

  final body2SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 28,
  );

  final body2ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 28,
  );

  final body2Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 28,
  );

  final body3Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 24,
  );

  final body3Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 24,
  );

  final body3SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 24,
  );

  final body3ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 24,
  );

  final body3Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 24,
  );

  final body4Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 20,
  );

  final body4Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 20,
  );

  final body4SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 20,
  );

  final body4ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 20,
  );

  final body4Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 20,
  );

  final body5Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 18,
  );

  final body5Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 18,
  );

  final body5SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 18,
  );

  final body5ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 18,
  );

  final body5Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 18,
  );

  final body6Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 16,
  );

  final body6Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 16,
  );

  final body6SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 16,
  );

  final body6ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 16,
  );

  final body6Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 16,
  );
  final body7Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 14,
  );

  final body7Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 14,
  );

  final body7SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 14,
  );

  final body7ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 14,
  );

  final body7Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 14,
  );

  final body8Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 12,
  );

  final body8Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 12,
  );

  final body8SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 12,
  );

  final body8ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 12,
  );

  final body8Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 12,
  );

  final body9Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 10,
  );

  final body9Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 10,
  );

  final body9SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 10,
  );

  final body9ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 10,
  );

  final body9Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 10,
  );

  final headline4Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 48,
  );

  final headline4Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 48,
  );

  final headline4SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 48,
  );

  final headline4ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 48,
  );

  final headline4Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 48,
  );

  final headline5Light = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.light.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final headline5Regular = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.regular.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final headline5SemiBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.semiBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final headline5ExtraBold = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.extraBold.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );

  final headline5Black = TextStyle(
    fontFamily: AppFontFamily.nunito.name,
    fontWeight: AppFontWeight.black.fontWeight,
    color: AppColors.dimGray,
    fontSize: 32,
  );
}
