import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/controller/auth/login_provider.dart';
import 'package:vikncodes_task/controller/auth/token_provider.dart';
import 'package:vikncodes_task/core/constance/login_page_const.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/core/utils/snak_bar_utils.dart';
import 'package:vikncodes_task/pages/bottomnav/bottom_navigation_page.dart';
import 'package:vikncodes_task/service/get_user_profile_service.dart';
import 'package:vikncodes_task/service/use_details/get_sale_service.dart';

class LoginPage extends ConsumerWidget {
  static const routePath = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userName = TextEditingController(text: "Rabeeh@vk");
    final password = TextEditingController(text: "Rabeeh@000");
    final formKey = GlobalKey<FormState>();

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
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (userName.text.isEmpty) {
                                return 'Enter your Email';
                              }
                              return null;
                            },
                            controller: userName,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person,
                                  color: context.color.buttoncolor),
                              labelText: constant.usernameText,
                              labelStyle: context.typography.bodySubText,
                              border: InputBorder.none,
                            ),
                          ),
                          const Divider(color: AppColorPalettes.grey150),
                          TextFormField(
                            validator: (value) {
                              if (password.text.isEmpty) {
                                return 'Enter your password';
                              }
                              return null;
                            },
                            controller: password,
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
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          try {
                            final data = await ref
                                .read(loginProvider.notifier)
                                .login(
                                    email: userName.text,
                                    password: password.text);

                            ref.watch(tokenProvider.notifier).state =
                                data.data?.access ?? "no token";

                            if (data.data != null &&
                                data.data?.username == userName.text) {
                              if (data.data!.access != null) {
                                if (context.mounted) {
                                  context.push(BottomNaviagtionPage.routePath);
                                }
                              } else {
                                log('Access is null');
                                SnackbarUtils.showError(
                                    'Login failed: Access is null');
                              }
                            } else {
                              log('Data or data.data is null');
                              SnackbarUtils.showError(
                                  'Login failed: Data is null');
                            }
                          } catch (e) {
                            log('Login error: $e');
                            if (e.toString().contains('502')) {
                              SnackbarUtils.showError(
                                  'Login failed: Server error (502)');
                            } else {
                              SnackbarUtils.showError('Login failed: $e');
                            }
                          }
                        }
                      },
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
