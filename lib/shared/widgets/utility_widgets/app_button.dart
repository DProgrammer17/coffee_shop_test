import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.buttonTitle,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.borderWidth,
    this.prefix,
    this.suffix,
  });

  final void Function()? onPressed;
  final String buttonTitle;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? borderWidth;
  final Widget? prefix;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 3.ah,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 16.ah),
          decoration: BoxDecoration(
            color: buttonColor ?? AppColors.primaryBrown,
            borderRadius: BorderRadius.circular(34.ar),
            border: Border.all(
              width: borderWidth ?? 1.ar,
              color: borderColor ?? Colors.transparent,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.aw),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (prefix != null) ...[
                  prefix!,
                  SizedBox(width: 15.aw),
                ],
                Text(
                  buttonTitle,
                  style: AppTextStyles.h4.copyWith(
                    fontWeight: FontWeight.w700,
                    color: textColor ?? AppColors.neutralWhite,
                  ),
                ),
                if (suffix != null) ...[
                  SizedBox(width: 15.aw),
                  suffix!,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
