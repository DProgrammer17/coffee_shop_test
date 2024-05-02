import 'package:abas_test_project/core/routes/route_name.dart';
import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_strings.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:abas_test_project/shared/constants/image_assets.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_button.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_scaffold.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const EmptyAppBar(appBarColor: Colors.transparent),
      padding: EdgeInsets.zero,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.ah, horizontal: 45.aw),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.largeCoffeeProductImg),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: AppConstants.deviceHeight * 0.5),
            Text(
              AppStrings.splashPageHeader,
              textAlign: TextAlign.center,
              style: AppTextStyles.h0.copyWith(
                color: AppColors.neutralGrey,
              ),
            ),
            SizedBox(height: 16.ah),
            Text(
              AppStrings.splashPageSubHeader,
              textAlign: TextAlign.center,
              style: AppTextStyles.body1Regular.copyWith(
                color: AppColors.neutralWhite,
              ),
            ),
            SizedBox(height: 55.ah),
            AppButton(
              onPressed: () => context.push(RouteName.dashboardPage),
              buttonTitle: ButtonStrings.getStarted,
              textColor: AppColors.neutralWhite,
            ),
          ],
        ),
      ),
    );
  }
}
