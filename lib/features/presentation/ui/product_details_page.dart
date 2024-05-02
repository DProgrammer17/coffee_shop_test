import 'package:abas_test_project/features/domain/app_view_model.dart';
import 'package:abas_test_project/features/presentation/widgets/back_button.dart';
import 'package:abas_test_project/features/presentation/widgets/group_button_item.dart';
import 'package:abas_test_project/features/presentation/widgets/icon_text.dart';
import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_strings.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:abas_test_project/shared/constants/image_assets.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_button.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_scaffold.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/vertical_divider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productTitle;
  final String productSubHeader;
  final String cost;
  final double rating;
  const ProductDetailsPage({
    super.key,
    required this.productTitle,
    required this.productSubHeader,
    required this.cost,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, vm, _) {
      return AppScaffold(
        backgroundColor: AppColors.primaryBrown,
        padding: EdgeInsets.zero,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const AppBackButton(),
          backgroundColor: Colors.transparent,
          toolbarHeight: 40.ah,
        ),
        body: SizedBox(
          height: AppConstants.deviceHeight,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                ImageAssets.largeCoffeeProductImg,
                height: 350.ah,
                width: AppConstants.deviceWidth,
                fit: BoxFit.fill,
              ),
              Positioned(
                top: AppConstants.deviceHeight * 0.3,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 13.ah, horizontal: 20.aw),
                  color: AppColors.neutralBlack.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productTitle,
                            style: AppTextStyles.h0
                                .copyWith(color: AppColors.neutralWhite),
                          ),
                          SizedBox(height: 5.ah),
                          Text(
                            productSubHeader,
                            style: AppTextStyles.body1Regular
                                .copyWith(color: AppColors.neutralWhite),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.ah, horizontal: 10.aw),
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
                              size: 16.ar,
                              color: AppColors.neutralWhite,
                            ),
                            SizedBox(width: 4.aw),
                            Text(
                              rating.toString(),
                              style: AppTextStyles.h3.copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.neutralWhite),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: AppConstants.deviceHeight * 0.41,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 22.ah, horizontal: 20.aw),
                  decoration: BoxDecoration(
                    color: AppColors.paleGrey,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40.ar),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 18.ah, horizontal: 20.aw),
                        decoration: BoxDecoration(
                          color: AppColors.darkGrey.withOpacity(0.21),
                          borderRadius:  BorderRadius.circular(27.ar),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const IconText(
                              text: AppStrings.coffee,
                              icon: ImageAssets.coffeeBeanImg,
                            ),
                            AppVerticalDivider(thickness: 1.aw),
                            const IconText(
                              text: AppStrings.chocolate,
                              icon: ImageAssets.chocolateEmoteImg,
                            ),
                            AppVerticalDivider(thickness: 1.aw),
                            const IconText(
                              text: AppStrings.mediumRoasted,
                              showIcon: false,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.ah),
                      Text(
                        AppStrings.coffeeSize,
                        style: AppTextStyles.h4,
                      ),
                      SizedBox(height: 16.ah),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GroupButtonItem(
                            groupValue: vm.coffeeSize,
                            title: AppStrings.small,
                            onTap: () =>
                                vm.updateCoffeeSizeGroupValue(AppStrings.small),
                          ),
                          GroupButtonItem(
                            groupValue: vm.coffeeSize,
                            title: AppStrings.medium,
                            onTap: () =>
                                vm.updateCoffeeSizeGroupValue(AppStrings.medium),
                          ),
                          GroupButtonItem(
                            groupValue: vm.coffeeSize,
                            title: AppStrings.large,
                            onTap: () =>
                                vm.updateCoffeeSizeGroupValue(AppStrings.large),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.ah),
                      Text(
                        AppStrings.about,
                        style: AppTextStyles.h4,
                      ),
                      SizedBox(height: 10.ah),
                      Text(
                        AppStrings.lormeLong,
                        style: AppTextStyles.body1Regular,
                      ),
                      SizedBox(height: 35.ah),
                      AppButton(
                        onPressed: () {},
                        buttonTitle: '${AppStrings.addToCart}      |     $cost',
                      ),
                      SizedBox(height: 10.ah),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
