import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppThemeNotifier extends _$AppThemeNotifier {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  void setTheme(ThemeMode mode) {
    state = mode;
  }

  ThemeMode get themeMode => state;
}
