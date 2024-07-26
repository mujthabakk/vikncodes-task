import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_page_const.g.dart';

class LoginPageConst {
  final login = "Login";
  final loginSubText = "Login to your vikn account";
  final usernameText = "Username";
  final passwordText = "Password";
  final loginButtonText = "Login";
  final forgotPasswordText = "Forgot Password?";
  final dontHaveAccountText = "Don't have an account?";
  final signUpText = "Sign Up Now!";
}

@riverpod
LoginPageConst loginPageConst(LoginPageConstRef ref) {
  return LoginPageConst();
}
