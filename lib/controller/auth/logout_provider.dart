import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/controller/auth/token_provider.dart';
import 'package:vikncodes_task/main.dart';
import 'package:vikncodes_task/pages/authentication/login_page.dart';

part 'logout_provider.g.dart';

@riverpod
Future<void> logout(LogoutRef ref) async {
  // Update the token provider state to null
  ref.read(tokenProvider.notifier).state = null;
  MainApp.scaffoldMessngerKey.currentState!.context.push(LoginPage.routePath);

  // Perform any additional logout tasks if needed
}
