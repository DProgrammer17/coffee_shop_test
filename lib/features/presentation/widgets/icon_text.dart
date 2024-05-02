import 'package:abas_test_project/core/extensions/string_extensions.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  final String text;
  final String? icon;
  final bool showIcon;
  const IconText({
    super.key,
    required this.text,
    this.icon,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if(showIcon && icon.isNotBlank)...[
          icon!.contains('svg')
              ? SvgPicture.asset(
            icon!,
            height: 20.ah,
          )
              : Image.asset(
            icon!,
            height: 20.ah,
          ),
        ],
        SizedBox(width: 10.aw),
        Text(
          text,
          style: AppTextStyles.body1Regular.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
