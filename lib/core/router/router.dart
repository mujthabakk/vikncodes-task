import 'package:go_router/go_router.dart';
import 'package:vikncodes_task/main.dart';
import 'package:vikncodes_task/pages/authentication/login_page.dart';
import 'package:vikncodes_task/pages/dashborde/home_page.dart';
import 'package:vikncodes_task/pages/filter_page.dart';
import 'package:vikncodes_task/pages/invoices_page.dart';
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
        path: ProfilePage.routerPath,
        builder: (context, state) {
          return const ProfilePage();
        },
      ),
      GoRoute(
        path: InvoicesPage.routePath,
        builder: (context, state) {
          return const InvoicesPage();
        },
      ),
      GoRoute(
        path: FilterPage.routerPath,
        builder: (context, state) {
          return const FilterPage();
        },
      ),
    ]);
