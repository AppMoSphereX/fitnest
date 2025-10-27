import 'package:fitnest/config/theme/app_palette.dart';
import 'package:fitnest/config/theme/typography.dart';
import 'package:flutter/material.dart';

extension AppThemeExtensions on BuildContext {
  AppPalette get palette => Theme.of(this).extension<AppPalette>()!;
  AppTypography get typography => Theme.of(this).extension<AppTypography>()!;
}
