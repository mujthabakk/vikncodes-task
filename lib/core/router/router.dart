
import 'package:go_router/go_router.dart';
import 'package:vikncodes_task/main.dart';
import 'package:vikncodes_task/pages/authentication/login_page.dart';
import 'package:vikncodes_task/pages/dashborde/home_page.dart';

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
    ]);
