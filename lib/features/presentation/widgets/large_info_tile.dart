import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class LargeInfoTile extends StatelessWidget {
  final String info;
  final String headerTile;
  final String image;
  const LargeInfoTile({
    super.key,
    required this.info,
    required this.headerTile,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.aw, vertical: 9.ah),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 106.ah,
            width: 138.aw,
          ),
          SizedBox(width: 13.aw),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 3.ah, horizontal: 9.aw),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.ar),
                  color: AppColors.primaryBrown,
                ),
                child: Text(
                  headerTile,
                  style: AppTextStyles.bodySmall2.copyWith(
                      fontWeight: FontWeight.w900,
                      color: AppColors.neutralWhite),
                ),
              ),
              SizedBox(height: 13.ah),
              Text(
                info,
                style: AppTextStyles.h3.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
