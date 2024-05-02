import 'package:abas_test_project/shared/constants/app_colors.dart';
import 'package:abas_test_project/shared/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onTap;
  const AppBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!.call();
          return;
        }
        context.pop();
      },
      child: Container(
        height: 6.ah,
        width: 6.aw,
      //  padding: EdgeInsets.all(13.ar),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.neutralWhite,
        ),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_sharp,
            size: 18.ar,
            color: AppColors.primaryBrown,
          ),
        ),
      ),
    );
  }
}
