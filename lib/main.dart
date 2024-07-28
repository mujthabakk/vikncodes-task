import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/extention/dark_theme_extention.dart';
import 'package:vikncodes_task/core/router/router.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static final scaffoldMessngerKey = GlobalKey<ScaffoldMessengerState>();
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // GetUserProfileService().getUserDetails();
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessngerKey,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ref.watch(darkThemeProvider),
    );
  }
}
