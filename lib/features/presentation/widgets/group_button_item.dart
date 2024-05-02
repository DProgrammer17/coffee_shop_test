import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class GroupButtonItem extends StatelessWidget {
  final String groupValue;
  final String title;
  final bool showBoxShadow;
  final Color? activeColor;
  final Color? inActiveColor;
  final Color? activeTextColor;
  final Color? inActiveTextColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final VoidCallback onTap;
  const GroupButtonItem({
    super.key,
    required this.groupValue,
    required this.title,
    required this.onTap,
    this.activeColor,
    this.inActiveColor,
    this.activeTextColor,
    this.inActiveTextColor,
    this.textStyle,
    this.padding,
    this.showBoxShadow = true,
  });

  bool get _selected => title == groupValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8.ah, horizontal: 15.ah),
        decoration: BoxDecoration(
          color: _selected
              ? (activeColor ?? AppColors.primaryBrown)
              : (inActiveColor ?? AppColors.neutralWhite),
          borderRadius: BorderRadius.circular(30.ar),
          boxShadow: showBoxShadow
              ? [
                  BoxShadow(
                    color: AppColors.neutralBlack.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(1, 1), // changes position of shadow
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Text(
            title,
            style: textStyle ??
                AppTextStyles.h4Light.copyWith(
                  color: _selected
                      ? (activeTextColor ?? AppColors.neutralWhite)
                      : (inActiveTextColor ?? AppColors.textBlackAlt),
                ),
          ),
        ),
      ),
    );
  }
}
