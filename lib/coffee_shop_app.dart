import 'package:abas_test_project/core/routes/route_config.dart';
import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:abas_test_project/shared/constants/app_strings.dart';
import 'package:abas_test_project/shared/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:overlay_support/overlay_support.dart';

class CoffeeShopApp extends StatelessWidget{
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
        const Size(AppConstants.designWidth, AppConstants.designHeight),
        splitScreenMode: false,
        builder: (context, child) {
          return OverlaySupport.global(
            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                systemStatusBarContrastEnforced: true,
              ),
              child: MaterialApp.router(
                title: AppStrings.appName,
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  useMaterial3: false,
                  appBarTheme: CoffeeTheme.globalAppBarTheme,
                  primaryColor: AppColors.primaryBrown,
                  scaffoldBackgroundColor: AppColors.neutralWhite,
                  textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
                ),
                routerConfig: appRouter,
              ),
            ),
          );
        });
  }

}