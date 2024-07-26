import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/core/extention/app_color_extention.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_space_extention.dart';
import 'package:vikncodes_task/core/extention/app_typography_extention.dart';

part 'dark_theme_extention.g.dart';

final _darktheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColorPalettes.grey1000,
    appBarTheme: const AppBarTheme(backgroundColor: AppColorPalettes.grey1000),
    extensions: [
      //AppColorExtension
      AppColorExtension(
        cardBackground: AppColorPalettes.blueGrey800,
        dashboardCardBackground: AppColorPalettes.grey400,
        dashboarsemidCardBackground: AppColorPalettes.grey400,
        dashboarsmaldCardBackground: AppColorPalettes.grey250,
        profileCardBackground: AppColorPalettes.grey400,
        loginCardBackground: AppColorPalettes.blueGrey800,
        buttoncolor: AppColorPalettes.blue,
        primary: AppColorPalettes.black500,
        secondary: AppColorPalettes.white500,
        text: AppColorPalettes.grey850,
        textSubtle: AppColorPalettes.grey200,
        btnText: AppColorPalettes.black500,
        bottomNavBorder: AppColorPalettes.grey600,
        bottomNavBar: AppColorPalettes.grey1000,
      ),
      //AppSpaceExtension
      AppSpaceExtension.fromBaseSpace(8),
      //AppTypographyExtension
      AppTypographyExtension(
        bodySubTextWhite: const TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w400),
        bodySubText: const TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            color: AppColorPalettes.grey50,
            fontWeight: FontWeight.w400),
        buttonText: const TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            color: AppColorPalettes.blue,
            fontWeight: FontWeight.w500),
        h1Bold: const TextStyle(
            fontSize: 22,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        h2: const TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w400),
        h1SemiBold: const TextStyle(
            fontSize: 22,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w400),
        redText: const TextStyle(
            fontSize: 16,
            fontFamily: 'poppins',
            color: AppColorPalettes.red500,
            fontWeight: FontWeight.w400),
        bodySmall: const TextStyle(
            fontSize: 12,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w400),
        bodySmallSemiBold: const TextStyle(
            fontSize: 10,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w600),
        h1: const TextStyle(
            fontSize: 21,
            fontFamily: 'poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),

        //AppShadowExtension
      )
    ]);

@riverpod
ThemeData darkTheme(DarkThemeRef ref) {
  return _darktheme;
}
