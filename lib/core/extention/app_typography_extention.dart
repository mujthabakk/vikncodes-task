import 'package:flutter/material.dart';

// App default typographys

class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle h1Bold;
  final TextStyle redText;
  final TextStyle bodySubTextWhite;
  final TextStyle bodySubText;
  final TextStyle buttonText;
  final TextStyle bodySmall;
  final TextStyle bodySmallSemiBold;
  final TextStyle h1;
  final TextStyle h1SemiBold;
  final TextStyle h2;

  AppTypographyExtension({
    required this.bodySubTextWhite,
    required this.bodySubText,
    required this.buttonText,
    required this.h1Bold,
    required this.h2,
    required this.h1SemiBold,
    required this.redText,
    required this.bodySmall,
    required this.bodySmallSemiBold,
    required this.h1,
    //
  });

  @override
  ThemeExtension<AppTypographyExtension> copyWith({
    TextStyle? bodySubTextWhite,
    TextStyle? bodySubText,
    TextStyle? buttonText,
    TextStyle? h1Bold,
    TextStyle? h2,
    TextStyle? h1SemiBold,
    TextStyle? redText,
    TextStyle? bodySmall,
    TextStyle? bodySmallSemiBold,
    TextStyle? h1,
  }) {
    return AppTypographyExtension(
      bodySubText: bodySubText ?? this.bodySubText,
      bodySubTextWhite: bodySubTextWhite ?? this.bodySubTextWhite,
      redText: redText ?? this.redText,
      bodySmall: bodySmall ?? this.bodySmall,
      bodySmallSemiBold: bodySmallSemiBold ?? this.bodySmallSemiBold,
      h1: h1 ?? this.h1,
      h1SemiBold: h1SemiBold ?? this.h1SemiBold,
      h1Bold: h1Bold ?? this.h1Bold,
      h2: h2 ?? this.h2,
      buttonText: buttonText ?? this.buttonText,
    );
  }

  @override
  ThemeExtension<AppTypographyExtension> lerp(
      covariant ThemeExtension<AppTypographyExtension>? other, double t) {
    if (other is! AppTypographyExtension) {
      return this;
    }
    return AppTypographyExtension(
      redText: TextStyle.lerp(redText, other.redText, t)!,
      bodySubTextWhite:
          TextStyle.lerp(bodySubTextWhite, other.bodySubTextWhite, t)!,
      bodySubText: TextStyle.lerp(bodySubText, other.bodySubText, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      bodySmallSemiBold:
          TextStyle.lerp(bodySmallSemiBold, other.bodySmallSemiBold, t)!,
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h1SemiBold: TextStyle.lerp(h1SemiBold, other.h1SemiBold, t)!,
      h1Bold: TextStyle.lerp(h1Bold, other.h1Bold, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      buttonText: TextStyle.lerp(buttonText, other.buttonText, t)!,
    );
  }
}
