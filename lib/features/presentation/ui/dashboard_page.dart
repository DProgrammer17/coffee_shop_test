import 'package:abas_test_project/features/domain/app_view_model.dart';
import 'package:abas_test_project/features/presentation/widgets/bottom_nav_bar.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/app_scaffold.dart';
import 'package:abas_test_project/shared/widgets/utility_widgets/empty_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  final int? currentIndex;
  const DashboardPage({super.key, this.currentIndex});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, _) =>  AppScaffold(
        padding: EdgeInsets.zero,
        appBar: const EmptyAppBar(appBarColor: Colors.transparent),
        body: viewModel.pages.elementAt(viewModel.bottomNavIndex),
        bottomNavigationBar: AppBottomNavBar(
          currentIndex: viewModel.bottomNavIndex,
          onTap: (value)=> viewModel.updateBottomNavIndex(value),
        ),
      ),
    );
  }
}
