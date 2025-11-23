import 'package:fitnest/config/constants/assets.dart';
import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/domain/models/user/goal.dart';
import 'package:fitnest/ui/core/localization/app_localization.dart';
import 'package:fitnest/ui/core/localization/localization_extensions.dart';
import 'package:fitnest/ui/profile_completion/widgets/goal_carousel.dart';
import 'package:flutter/material.dart';

class GoalSelection extends StatelessWidget {
  const GoalSelection({
    super.key,
    required this.onGoalChanged,
    this.initialGoal,
  });

  final Function(Goal) onGoalChanged;
  final Goal? initialGoal;

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final typography = context.typography;

    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
      child: Column(
        children: [
          Text(
            localization.whatIsYourGoalTitle,
            style: typography.h4.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            localization.whatIsYourGoalSubtitle,
            style: typography.smallText,
          ),
          SizedBox(height: 50),
          Expanded(
            child: GoalCarousel(
              goals: _getGoals(localization),
              onChanged: onGoalChanged,
              initialGoal: initialGoal,
            ),
          ),
        ],
      ),
    );
  }

  List<GoalData> _getGoals(AppLocalization appLocalization) {
    return [
      GoalData(
        goal: Goal.improveShape,
        image: Assets.improveShape,
        title: appLocalization.improveShape,
        description: appLocalization.improveShapeDescription,
      ),
      GoalData(
        goal: Goal.leanAndTone,
        image: Assets.leanAndTone,
        title: appLocalization.leanAndTone,
        description: appLocalization.leanAndToneDescription,
      ),
      GoalData(
        goal: Goal.loseFat,
        image: Assets.loseFat,
        title: appLocalization.loseFat,
        description: appLocalization.loseFatDescription,
      ),
    ];
  }
}
