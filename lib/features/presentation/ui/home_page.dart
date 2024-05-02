import 'package:abas_test_project/core/validators/textfield_validator.dart';
import 'package:abas_test_project/features/domain/app_view_model.dart';
import 'package:abas_test_project/features/presentation/ui/product_details_page.dart';
import 'package:abas_test_project/features/presentation/widgets/category_tile.dart';
import 'package:abas_test_project/features/presentation/widgets/large_info_tile.dart';
import 'package:abas_test_project/features/presentation/widgets/product_tile.dart';
import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_strings.dart';
import 'package:abas_test_project/shared/constants/app_text_styles.dart';
import 'package:abas_test_project/shared/constants/image_assets.dart';
import 'package:abas_test_project/shared/constants/navigation.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_scaffold.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_text_field.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/empty_app_bar.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/vertical_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, vm, _) {
      return AppScaffold(
        appBar: const EmptyAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.ah),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.profileImg,
                  height: 60.ah,
                  width: 60.aw,
                ),
                SizedBox(width: 40.aw),
                SizedBox(
                  width: 102.aw,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 20.ar,
                        color: AppColors.primaryBrown,
                      ),
                      Text(
                        AppStrings.location,
                        style: AppTextStyles.body1Regular.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset(
                  ImageAssets.notificationImg,
                  height: 24.ah,
                  width: 24.aw,
                ),
              ],
            ),
            SizedBox(height: 20.ah),
            Text(
              AppStrings.goodMorning,
              style: AppTextStyles.h4,
            ),
            SizedBox(height: 28.ah),
            AppTextField(
              controller: vm.searchController,
              hintText: AppStrings.searchCoffee,
              horizontalPadding: 0.aw,
              validator: (value) => TextfieldValidator.input(value),
              prefixIcon: Icon(
                CupertinoIcons.search,
                size: 25.ar,
                color: AppColors.darkGrey,
              ),
              suffixIcon: Image.asset(
                ImageAssets.filterImg,
                scale: 2,
              ),
            ),
            SizedBox(height: 28.ah),
            Text(
              AppStrings.categories,
              style: AppTextStyles.h4,
            ),
            SizedBox(height: 18.ah),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CategoryTile(
                    groupValue: vm.groupValue,
                    title: AppStrings.cappuccino,
                    icon: SvgAssets.cappuccinoSvg,
                    onTap: () =>
                        vm.updateCategoriesGroupValue(AppStrings.cappuccino),
                  ),
                  CategoryTile(
                    groupValue: vm.groupValue,
                    title: AppStrings.coldBrew,
                    icon: SvgAssets.coldBrewSvg,
                    onTap: () =>
                        vm.updateCategoriesGroupValue(AppStrings.coldBrew),
                  ),
                  CategoryTile(
                    groupValue: vm.groupValue,
                    title: AppStrings.expresso,
                    icon: SvgAssets.expressoSvg,
                    onTap: () =>
                        vm.updateCategoriesGroupValue(AppStrings.expresso),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.ah),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 200.ah,
                    child: GridView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 190.ah,
                        crossAxisSpacing: 20.aw,
                      ),
                      children: [
                        ProductTile(
                          title: AppStrings.cappuccino,
                          subtitle: AppStrings.withChocolate,
                          icon: ImageAssets.cappuccinoImg,
                          cost: AppStrings.fiftyK,
                          rating: 4.9,
                          onTap: () => context.pushSuper(
                            const ProductDetailsPage(
                              productTitle: AppStrings.cappuccino,
                              productSubHeader: AppStrings.withChocolate,
                              cost: AppStrings.fiftyK,
                              rating: 4.9,
                            ),
                          ),
                        ),
                        ProductTile(
                          title: AppStrings.cappuccino,
                          subtitle: AppStrings.withLowFatMilk,
                          icon: ImageAssets.cappuccinoLowFatMilkImg,
                          cost: AppStrings.fortyFiveK,
                          rating: 4.7,
                          onTap: () => context.pushSuper(
                            const ProductDetailsPage(
                              productTitle: AppStrings.cappuccino,
                              productSubHeader: AppStrings.withLowFatMilk,
                              cost: AppStrings.fortyFiveK,
                              rating: 4.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.ah),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.specialOffer,
                        style: AppTextStyles.h4.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 4.aw),
                      Image.asset(
                        ImageAssets.fireEmoteImg,
                        height: 20.ah,
                        width: 20.aw,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.ah),
                  const LargeInfoTile(
                    info: AppStrings.buy1get1Free,
                    headerTile: AppStrings.limited,
                    image: ImageAssets.goPayCoffeeImage,
                  ),
                  SizedBox(height: 30.ah),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
