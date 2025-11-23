import 'package:fitnest/config/constants/assets.dart';
import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/ui/core/localization/localization_extensions.dart';
import 'package:flutter/material.dart';

class WelcomeStep extends StatelessWidget {
  const WelcomeStep({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    final appLocalization = context.localization;
    final typography = context.typography;
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: 100.0,
        bottom: 30.0,
        left: 30.0,
        right: 30.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.welcome),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Text(
                    '${appLocalization.welcome}, $name',
                    style: typography.h4.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    appLocalization.youAreAllSetNow,
                    style: typography.smallText.copyWith(
                      color: context.palette.secondaryTextColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
