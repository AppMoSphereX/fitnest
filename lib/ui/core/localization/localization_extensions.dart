import 'package:flutter/material.dart';
import 'app_localization.dart';

extension AppLocalizationExtensions on BuildContext {
  AppLocalization get localization => AppLocalization.of(this);
}
