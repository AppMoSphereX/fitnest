import 'package:fitnest/config/theme/app_palette.dart';
import 'package:fitnest/config/theme/typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = _buildTheme(
    brightness: Brightness.light,
    palette: AppPalette.light,
    typography: AppTypography.base(AppPalette.light.defaultTextColor),
  );

  static ThemeData dark = _buildTheme(
    brightness: Brightness.dark,
    palette: AppPalette.dark,
    typography: AppTypography.base(AppPalette.dark.defaultTextColor),
  );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required AppPalette palette,
    required AppTypography typography,
  }) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      textTheme: AppTypography.textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: palette.primaryGradientStart,
        primary: palette.primaryGradientStart,
        brightness: brightness,
      ),
      scaffoldBackgroundColor: palette.scaffoldBackgroundColor,
      extensions: [palette, typography],
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: palette.inputFillColor,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          borderSide: BorderSide.none,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        iconColor: palette.inputIconColor,
        labelStyle: typography.smallText.copyWith(
          color: palette.inputLabelColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
          ),
          backgroundBuilder: (context, states, child) {
            return Container(
              decoration: BoxDecoration(gradient: palette.primaryGradient),
              child: child,
            );
          },
          textStyle: typography.largeText.copyWith(fontWeight: FontWeight.bold),
          foregroundColor: Colors.white,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide(color: palette.disabledColor, width: 1.5),
      ),
    );
  }
}
