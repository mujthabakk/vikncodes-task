import 'package:go_router/go_router.dart';
import 'package:vikncodes_task/main.dart';
import 'package:vikncodes_task/pages/authentication/login_page.dart';
import 'package:vikncodes_task/pages/bottomnav/bottom_navigation_page.dart';
import 'package:vikncodes_task/pages/dashborde/home_page.dart';
import 'package:vikncodes_task/pages/filter_page.dart';
import 'package:vikncodes_task/pages/sales_list_page.dart';
import 'package:vikncodes_task/pages/profile_page.dart';

final router = GoRouter(
    navigatorKey: MainApp.navigatorKey,
    initialLocation: LoginPage.routePath,
    routes: [
      GoRoute(
        path: LoginPage.routePath,
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: HomePage.routePath,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: BottomNaviagtionPage.routePath,
        builder: (context, state) {
          return const BottomNaviagtionPage();
        },
      ),
      GoRoute(
        path: ProfilePage.routerPath,
        builder: (context, state) {
          return const ProfilePage();
        },
      ),
      GoRoute(
        path: SalesListPage.routePath,
        builder: (context, state) {
          return const SalesListPage();
        },
      ),
      GoRoute(
        path: FilterPage.routerPath,
        builder: (context, state) {
          return const FilterPage();
        },
      ),
    ]);
