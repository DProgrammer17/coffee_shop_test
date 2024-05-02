import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_strings.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:abas_test_project/shared/constants/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const AppBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
      return BottomNavigationBar(
      selectedItemColor: AppColors.primaryBrown,
      unselectedItemColor: AppColors.neutralGrey,
      selectedLabelStyle:
      AppTextStyles.body1Regular.copyWith(fontWeight: FontWeight.w800),
      unselectedLabelStyle:
      AppTextStyles.body1Regular.copyWith(fontWeight: FontWeight.w800),
      iconSize: 20.ar,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            SvgAssets.homeSvg,
            color:
            currentIndex == 0 ? AppColors.primaryBrown : AppColors.neutralGrey,
          ),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            SvgAssets.favouriteSvg,
            color:
            currentIndex == 1 ? AppColors.primaryBrown : AppColors.neutralGrey,
          ),
          label: AppStrings.favourite,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            SvgAssets.cartSvg,
            color:
            currentIndex == 2 ? AppColors.primaryBrown : AppColors.neutralGrey,
          ),
          label: AppStrings.cart,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            SvgAssets.profileSvg,
            color: currentIndex == 3
                ? AppColors.primaryBrown
                : AppColors.neutralGrey,
          ),
          label: AppStrings.profile,
        ),
      ],
    );
  }
}
