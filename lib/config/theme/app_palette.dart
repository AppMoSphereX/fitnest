import 'package:flutter/material.dart';

class AppPalette extends ThemeExtension<AppPalette> {
  final Color primaryGradientStart;
  final Color primaryGradientEnd;
  final Color secondaryGradientStart;
  final Color secondaryGradientEnd;
  final Color disabledColor;
  final Color inputFillColor;
  final Color inputIconColor;
  final Color inputLabelColor;
  final Color scaffoldBackgroundColor;
  final Color defaultTextColor;

  const AppPalette({
    required this.primaryGradientStart,
    required this.primaryGradientEnd,
    required this.secondaryGradientStart,
    required this.secondaryGradientEnd,
    required this.disabledColor,
    required this.inputFillColor,
    required this.inputIconColor,
    required this.inputLabelColor,
    required this.scaffoldBackgroundColor,
    required this.defaultTextColor,
  });

  static const light = AppPalette(
    primaryGradientStart: Color(0xFF92A3FD),
    primaryGradientEnd: Color(0xFF9DCEFF),
    secondaryGradientStart: Color(0xFFC58BF2),
    secondaryGradientEnd: Color(0xFFEEA4CE),
    disabledColor: Color.fromARGB(255, 173, 164, 165),
    inputFillColor: Color.fromARGB(255, 247, 248, 248),
    inputIconColor: Color.fromARGB(255, 123, 111, 114),
    inputLabelColor: Color(0xFFADA4A5),
    scaffoldBackgroundColor: Colors.white,
    defaultTextColor: Color(0xFF1D1617),
  );

  static const dark = AppPalette(
    primaryGradientStart: Color(0xFF7B8CDB),
    primaryGradientEnd: Color(0xFF8CB7DD),
    secondaryGradientStart: Color(0xFFB47BD0),
    secondaryGradientEnd: Color(0xFFD894BC),
    disabledColor: Color.fromARGB(255, 100, 100, 100),
    inputFillColor: Color.fromARGB(255, 40, 40, 40),
    inputIconColor: Color.fromARGB(255, 150, 150, 150),
    inputLabelColor: Color(0xFF888888),
    scaffoldBackgroundColor: Colors.black,
    defaultTextColor: Color(0xFFFFFFFF),
  );

  LinearGradient get primaryGradient =>
      LinearGradient(colors: [primaryGradientStart, primaryGradientEnd]);

  LinearGradient get secondaryGradient =>
      LinearGradient(colors: [secondaryGradientStart, secondaryGradientEnd]);

  LinearGradient get disabledGradient =>
      LinearGradient(colors: [disabledColor, disabledColor]);

  @override
  ThemeExtension<AppPalette> copyWith({
    Color? primaryGradientStart,
    Color? primaryGradientEnd,
    Color? secondaryGradientStart,
    Color? secondaryGradientEnd,
    Color? disabledColor,
    Color? inputFillColor,
    Color? inputIconColor,
    Color? inputLabelColor,
    Color? scaffoldBackgroundColor,
    Color? defaultTextColor,
  }) {
    return AppPalette(
      primaryGradientStart: primaryGradientStart ?? this.primaryGradientStart,
      primaryGradientEnd: primaryGradientEnd ?? this.primaryGradientEnd,
      secondaryGradientStart:
          secondaryGradientStart ?? this.secondaryGradientStart,
      secondaryGradientEnd: secondaryGradientEnd ?? this.secondaryGradientEnd,
      disabledColor: disabledColor ?? this.disabledColor,
      inputFillColor: inputFillColor ?? this.inputFillColor,
      inputIconColor: inputIconColor ?? this.inputIconColor,
      inputLabelColor: inputLabelColor ?? this.inputLabelColor,
      scaffoldBackgroundColor:
          scaffoldBackgroundColor ?? this.scaffoldBackgroundColor,
      defaultTextColor: defaultTextColor ?? this.defaultTextColor,
    );
  }

  @override
  ThemeExtension<AppPalette> lerp(
    covariant ThemeExtension<AppPalette>? other,
    double t,
  ) {
    if (other is! AppPalette) return this;

    return AppPalette(
      primaryGradientStart: Color.lerp(
        primaryGradientStart,
        other.primaryGradientStart,
        t,
      )!,
      primaryGradientEnd: Color.lerp(
        primaryGradientEnd,
        other.primaryGradientEnd,
        t,
      )!,
      secondaryGradientStart: Color.lerp(
        secondaryGradientStart,
        other.secondaryGradientStart,
        t,
      )!,
      secondaryGradientEnd: Color.lerp(
        secondaryGradientEnd,
        other.secondaryGradientEnd,
        t,
      )!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
      inputFillColor: Color.lerp(inputFillColor, other.inputFillColor, t)!,
      inputIconColor: Color.lerp(inputIconColor, other.inputIconColor, t)!,
      inputLabelColor: Color.lerp(inputLabelColor, other.inputLabelColor, t)!,
      scaffoldBackgroundColor: Color.lerp(
        scaffoldBackgroundColor,
        other.scaffoldBackgroundColor,
        t,
      )!,
      defaultTextColor: Color.lerp(
        defaultTextColor,
        other.defaultTextColor,
        t,
      )!,
    );
  }
}
