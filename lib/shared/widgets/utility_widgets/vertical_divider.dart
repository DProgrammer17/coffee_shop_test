import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppVerticalDivider extends StatelessWidget {
  final double? height;
  final Color? color;
  final double? thickness;
  const AppVerticalDivider({
    super.key,
    this.height,
    this.color,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
   return Column(
     mainAxisSize: MainAxisSize.min,
     children: [
       Container(
         width: thickness ?? 0.aw,
         height: height ?? 20.ah,
         color: color ?? AppColors.neutralBlack,
       ),
     ],
   );
  }
}
