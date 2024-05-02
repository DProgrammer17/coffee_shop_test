import 'package:abas_test_project/coffee_shop_app.dart';
import 'package:abas_test_project/features/core/app_provider.dart';
import 'package:abas_test_project/features/domain/app_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  runApp(
     MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppViewModel()),
      ],
      child: const CoffeeShopApp(),
    ),
  );
}
