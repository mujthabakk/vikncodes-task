import 'package:flutter/material.dart';

// App default colors

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  final Color primary;
  final Color secondary;
  final Color text;
  final Color textSubtle;
  final Color btnText;
  final Color bottomNavBorder;
  final Color cardBackground;
  final Color bottomNavBar;
  final Color buttoncolor;
  final Color loginCardBackground;
  final Color dashboardCardBackground;
  final Color dashboarsemidCardBackground;
  final Color dashboarsmaldCardBackground;
  final Color profileCardBackground;

  AppColorExtension({
    required this.dashboarsemidCardBackground,
    required this.profileCardBackground,
    required this.dashboarsmaldCardBackground,
    required this.buttoncolor,
    required this.primary,
    required this.secondary,
    required this.text,
    required this.textSubtle,
    required this.btnText,
    required this.bottomNavBorder,
    required this.cardBackground,
    required this.bottomNavBar,
    required this.loginCardBackground,
    required this.dashboardCardBackground,
  });

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? text,
    Color? textSubtle,
    Color? btnText,
    Color? border,
    Color? bottomNavBorder,
    Color? cardBackground,
    Color? messageBackground,
    Color? appBarBackground,
    Color? iconButtonBackgroud,
    Color? iconButtonIcon,
    Color? bottomNavBar,
    Color? buttoncolor,
    Color? loginCardBackground,
    Color? dashboardCardBackground,
    Color? dashboarsemidCardBackground,
    Color? dashboarsmaldCardBackground,
    Color? profileCardBackground,
  }) {
    return AppColorExtension(
      profileCardBackground:
          profileCardBackground ?? this.profileCardBackground,
      dashboarsmaldCardBackground:
          dashboarsmaldCardBackground ?? this.dashboarsmaldCardBackground,
      dashboarsemidCardBackground:
          dashboarsemidCardBackground ?? this.dashboarsemidCardBackground,
      dashboardCardBackground:
          dashboardCardBackground ?? this.dashboardCardBackground,
      loginCardBackground: loginCardBackground ?? this.loginCardBackground,
      buttoncolor: buttoncolor ?? this.buttoncolor,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      text: text ?? this.text,
      textSubtle: textSubtle ?? this.textSubtle,
      btnText: btnText ?? this.btnText,
      bottomNavBorder: bottomNavBorder ?? this.bottomNavBorder,
      cardBackground: cardBackground ?? this.cardBackground,
      bottomNavBar: bottomNavBar ?? this.bottomNavBar,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }
    return AppColorExtension(
      dashboarsmaldCardBackground: Color.lerp(
          dashboarsmaldCardBackground, other.dashboarsmaldCardBackground, t)!,
      dashboarsemidCardBackground: Color.lerp(
          dashboarsemidCardBackground, other.dashboarsemidCardBackground, t)!,
      dashboardCardBackground: Color.lerp(
          dashboardCardBackground, other.dashboardCardBackground, t)!,
      loginCardBackground:
          Color.lerp(loginCardBackground, other.loginCardBackground, t)!,
      buttoncolor: Color.lerp(buttoncolor, other.buttoncolor, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      text: Color.lerp(text, other.text, t)!,
      textSubtle: Color.lerp(textSubtle, other.textSubtle, t)!,
      btnText: Color.lerp(btnText, other.btnText, t)!,
      bottomNavBorder: Color.lerp(bottomNavBorder, other.bottomNavBorder, t)!,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t)!,
      bottomNavBar: Color.lerp(bottomNavBar, other.bottomNavBar, t)!,
      profileCardBackground:
          Color.lerp(profileCardBackground, other.profileCardBackground, t)!,
    );
  }
}
