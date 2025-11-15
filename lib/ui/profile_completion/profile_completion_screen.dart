import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/config/theme/typography.dart';
import 'package:fitnest/ui/core/localization/app_localization.dart';
import 'package:fitnest/ui/core/localization/localization_extensions.dart';
import 'package:fitnest/ui/core/widgets/expanded_button.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_vm.dart';
import 'package:fitnest/ui/profile_completion/widgets/basic_profile_completion.dart';
import 'package:fitnest/ui/profile_completion/widgets/goal_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileCompletionScreen extends ConsumerWidget {
  final ProfileCompletionVM viewModel;

  const ProfileCompletionScreen(this.viewModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileCompletionVMProvider);
    final appLocalization = context.localization;
    final typography = context.typography;

    return Scaffold(
      body: state.step == 1
          ? BasicProfileCompletion(
              onDateSelected: (date) => viewModel.setDateOfBirth(date),
              onGenderSelected: (gender) => viewModel.setGender(gender),
              onWeightSelected: (weight) => viewModel.setWeight(weight),
              onHeightSelected: (height) => viewModel.setHeight(height),
              gender: state.gender,
              dateOfBirth: state.dateOfBirth,
              weight: state.weight,
              height: state.height,
            )
          : state.step == 2
          ? GoalSelection(
              onGoalChanged: (goal) => viewModel.setGoal(goal),
              initialGoal: state.goal,
            )
          : _buildStep3(context),
      persistentFooterButtons: [
        state.step == 1
            ? _buildNextButton(appLocalization, typography)
            : _buildConfirmButton(appLocalization, typography, state.isLoading),
      ],
      persistentFooterDecoration: BoxDecoration(),
    );
  }

  Widget _buildNextButton(
    AppLocalization appLocalization,
    AppTypography typography,
  ) {
    return ExpandedButton(
      text: appLocalization.next,
      suffixIcon: Icons.arrow_forward_ios_outlined,
      onPressed: () => viewModel.nextStep(),
    );
  }

  Widget _buildConfirmButton(
    AppLocalization appLocalization,
    AppTypography typography,
    bool isLoading,
  ) {
    return ExpandedButton(
      text: appLocalization.confirm,
      onPressed: () => viewModel.completeProfile(),
      isLoading: isLoading,
    );
  }

  Widget _buildStep3(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Text('Profile completed. Now you can start your journey.'),
      ),
    );
  }
}
