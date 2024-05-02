import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static TextStyle h0 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.textBlack,
      fontSize: 28.asp,
    ),
  );

  static TextStyle h1 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.textBlack,
      fontSize: 24.asp,
    ),
  );

  static TextStyle h2 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.textBlack,
      fontSize: 14.asp,
    ),
  );

  static TextStyle h3 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.textBlack,
      fontSize: 16.asp,
    ),
  );

  static TextStyle h4 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.textBlack,
      fontSize: 20.asp,
    ),
  );

  static TextStyle h4Light = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.textBlack,
      fontSize: 20.asp,
    ),
  );

  static TextStyle h5 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.textBlack,
      fontSize: 18.asp,
    ),
  );

  static TextStyle body1Regular = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.textBlack,
      fontSize: 12.asp,
    ),
  );

  static TextStyle body2Regular = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.textBlack,
      fontSize: 14.asp,
    ),
  );

  static TextStyle body3Regular = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.textBlack,
      fontSize: 10.asp,
    ),
  );

  static TextStyle bodySmall1 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.textBlack,
      fontSize: 6.asp,
    ),
  );

  static TextStyle bodySmall2 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.textBlack,
      fontSize: 8.asp,
    ),
  );

  static TextStyle bodyRegularSize14 = GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14.asp,
      fontWeight: FontWeight.w500,
      color: AppColors.textBlack,
    ),
  );

  final placeholderNairaText = Text(
    "\u20A6....",
    style: h0,
  );
}
