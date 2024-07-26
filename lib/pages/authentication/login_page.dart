import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/constance/login_page_const.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

class LoginPage extends ConsumerWidget {
  static const routePath = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constant = ref.watch(loginPageConstProvider);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.color.dashboardCardBackground,
              context.color.loginCardBackground
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox.shrink(),
              Column(
                children: [
                  Text(
                    constant.login,
                    style: context.typography.h1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: context.spacer.space_100),
                    child: Padding(
                      padding:
                          EdgeInsets.only(bottom: context.spacer.space_200),
                      child: Text(
                        constant.loginSubText,
                        style: context.typography.bodySubText,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.spacer.space_200),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColorPalettes.grey150),
                      color: context.color.loginCardBackground,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person,
                                color: context.color.buttoncolor),
                            labelText: constant.usernameText,
                            labelStyle: context.typography.bodySubText,
                            border: InputBorder.none,
                          ),
                        ),
                        const Divider(color: AppColorPalettes.grey150),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock,
                                color: context.color.buttoncolor),
                            suffixIcon: const Icon(Icons.visibility,
                                color: AppColorPalettes.grey150),
                            labelText: constant.passwordText,
                            labelStyle: context.typography.bodySubText,
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: context.spacer.space_400,
                          bottom: context.spacer.space_400),
                      child: Text(
                        constant.forgotPasswordText,
                        style: const TextStyle(color: AppColorPalettes.blue),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.color.buttoncolor,
                        padding: EdgeInsets.symmetric(
                            horizontal: context.spacer.space_700,
                            vertical: context.spacer.space_200),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        constant.login,
                        style: context.typography.bodySubTextWhite,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      constant.dontHaveAccountText,
                      style: context.typography.bodySubText,
                    ),
                  ),
                  Center(
                    child: Text(
                      constant.signUpText,
                      style: const TextStyle(color: AppColorPalettes.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
