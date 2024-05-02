import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;
  final String cost;
  final double rating;
  final VoidCallback onTap;
  const ProductTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.cost,
    required this.rating,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.aw, vertical: 9.ah),
        decoration: BoxDecoration(
          color: AppColors.neutralWhite,
          borderRadius: BorderRadius.circular(15.ar),
          boxShadow: [
            BoxShadow(
              color: AppColors.neutralBlack.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(1, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  icon,
                  height: 107.5.ah,
                  width: 220.aw,
                ),
                Positioned(
                  top: 6.ah,
                  right: 6.aw,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3.ah, horizontal: 5.aw),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.ar),
                      color: AppColors.primaryBrown,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Icon(
                         Icons.star,
                         size: 9.ar,
                         color: AppColors.neutralWhite,
                       ),
                        SizedBox(width: 2.5.aw),
                        Text(
                          rating.toString(),
                          style: AppTextStyles.bodySmall2.copyWith(
                            fontWeight: FontWeight.w300,
                            color: AppColors.neutralWhite
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.ah),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.h4Light,
                    ),
                    SizedBox(height: 2.ah),
                    Text(
                      subtitle,
                      style: AppTextStyles.bodySmall1,
                    ),
                    SizedBox(height: 3.ah),
                    Text(
                      cost,
                      style: AppTextStyles.body1Regular.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.add_circle_outlined,
                  size: 35.ar,
                  color: AppColors.primaryBrown,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
