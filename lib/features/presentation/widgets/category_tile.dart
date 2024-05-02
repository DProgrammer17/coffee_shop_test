import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTile extends StatelessWidget {
  final String groupValue;
  final String title;
  final String icon;
  final VoidCallback onTap;
  const CategoryTile({
    super.key,
    required this.groupValue,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  bool get _selected => title == groupValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.ar),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _selected ? AppColors.primaryBrown : AppColors.paleGrey,
          borderRadius: BorderRadius.circular(33.ar),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color:
                  _selected ? AppColors.neutralWhite : AppColors.textBlackAlt,
              height: 14.ah,
              width: 14.aw,
            ),
            SizedBox(width: 2.aw),
            Text(
              title,
              style: AppTextStyles.body1Regular.copyWith(
                fontWeight: FontWeight.w800,
                color:
                    _selected ? AppColors.neutralWhite : AppColors.textBlackAlt,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
