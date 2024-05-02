import 'package:abas_test_project/features/presentation/ui/home_page.dart';
import 'package:abas_test_project/shared/constants/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppViewModel extends ChangeNotifier{
  TextEditingController searchController = TextEditingController();
  int bottomNavIndex = 0;
  String groupValue = AppStrings.cappuccino;
  String coffeeSize = AppStrings.small;
  final List<Widget> pages = const [
    HomePage(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];


  void updateBottomNavIndex(int value){
    bottomNavIndex = value;
    notifyListeners();
  }

  void updateCategoriesGroupValue(String value){
    groupValue = value;
    notifyListeners();
  }

    void updateCoffeeSizeGroupValue(String value){
    coffeeSize = value;
    notifyListeners();
  }

}
