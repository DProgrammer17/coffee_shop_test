import 'package:abas_test_project/core/routes/route_name.dart';
import 'package:abas_test_project/features/presentation/ui/dashboard_page.dart';
import 'package:abas_test_project/features/presentation/ui/home_page.dart';
import 'package:abas_test_project/features/presentation/ui/intro_page.dart';
import 'package:abas_test_project/features/presentation/ui/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _bottomNavShellNavKey =
    GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavKey,
  initialLocation: RouteName.splash,
  routes: <RouteBase>[
    GoRoute(
      path: RouteName.splash,
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
        path: RouteName.dashboardPage,
        builder: (context, state) {
          var initPage = (state.extra ?? 0) as int;
          return DashboardPage(currentIndex: initPage);
        }),
  ],
  debugLogDiagnostics: true,
);
