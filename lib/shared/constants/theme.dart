import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

abstract class CoffeeTheme{
  static const globalAppBarTheme = AppBarTheme(
    elevation: 0.0,
    foregroundColor: AppColors.primaryBrown,
    backgroundColor: AppColors.neutralWhite,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
    ),
  );
}