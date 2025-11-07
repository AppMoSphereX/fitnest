import 'package:fitnest/config/theme/app_palette.dart';
import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/config/theme/typography.dart';
import 'package:fitnest/ui/core/localization/app_localization.dart';
import 'package:fitnest/ui/core/localization/localization_extensions.dart';
import 'package:fitnest/ui/core/widgets/app_dropdown.dart';
import 'package:fitnest/ui/core/widgets/app_form_field.dart';
import 'package:fitnest/ui/core/widgets/expanded_button.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_state.dart';
import 'package:fitnest/ui/profile_completion/profile_completion_vm.dart';
import 'package:fitnest/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ProfileCompletionScreen extends ConsumerWidget {
  final ProfileCompletionVM viewModel;

  const ProfileCompletionScreen(this.viewModel, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileCompletionVMProvider);
    final appLocalization = context.localization;
    final typography = context.typography;
    final palette = context.palette;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: state.step == 1
              ? _buildStep1(
                  appLocalization,
                  typography,
                  context,
                  state,
                  palette,
                )
              : _buildStep2(),
        ),
      ),
      persistentFooterButtons: [
        state.step == 1
            ? _buildNextButton(appLocalization, typography)
            : _buildConfirmButton(appLocalization, typography),
      ],
      persistentFooterDecoration: BoxDecoration(),
    );
  }

  Widget _buildStep1(
    AppLocalization appLocalization,
    AppTypography typography,
    BuildContext context,
    ProfileCompletionState state,
    AppPalette palette,
  ) {
    return Column(
      children: [
        Image.asset('assets/images/profile_completion.png'),
        const SizedBox(height: 30),
        Text(
          appLocalization.letsCompleteYourProfile,
          style: typography.h4.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          appLocalization.itWillHelpUsToKnowMoreAboutYou,
          style: typography.smallText,
        ),
        const SizedBox(height: 30),
        _buildGenderInput(appLocalization, typography),
        const SizedBox(height: 15),
        _buildBirthDateInput(
          context: context,
          state: state,
          typography: typography,
          appLocalization: appLocalization,
          palette: palette,
        ),
        const SizedBox(height: 15),
        _buildWeightInput(appLocalization, palette, typography),
        const SizedBox(height: 15),
        _buildHeightInput(appLocalization, palette, typography),
      ],
    );
  }

  Widget _buildStep2() {
    return Column(children: [Text('Step 2')]);
  }

  Widget _buildGenderInput(
    AppLocalization appLocalization,
    AppTypography typography,
  ) {
    return AppDropdown(
      items: [
        DropdownMenuItem<String>(
          key: ValueKey(appLocalization.male),
          value: appLocalization.male,
          child: Text(appLocalization.male, style: typography.smallText),
        ),
        DropdownMenuItem<String>(
          key: ValueKey(appLocalization.female),
          value: appLocalization.female,
          child: Text(appLocalization.female, style: typography.smallText),
        ),
      ],
      onChanged: (value) => viewModel.setGender(value as String),
      validator: Validators.validateGender,
      hint: appLocalization.selectGender,
    );
  }

  Widget _buildBirthDateInput({
    required BuildContext context,
    required ProfileCompletionState state,
    required AppTypography typography,
    required AppLocalization appLocalization,
    required AppPalette palette,
  }) {
    return TextFormField(
      readOnly: true,
      onTap: () =>
          _selectDate(context: context, initialDate: state.dateOfBirth),
      controller: TextEditingController(
        text: state.dateOfBirth != null
            ? DateFormat('dd/MM/yyyy').format(state.dateOfBirth!)
            : '',
      ),
      style: typography.smallText,
      validator: Validators.validateDateOfBirth,
      decoration: InputDecoration(
        hintText: state.dateOfBirth == null
            ? appLocalization.dateOfBirth
            : null,
        prefixIcon: Icon(Icons.calendar_month_outlined, size: 20),
        prefixIconColor: palette.inputIconColor,
      ),
    );
  }

  Future<void> _selectDate({
    required BuildContext context,
    DateTime? initialDate,
  }) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          initialDate ??
          DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      viewModel.setDateOfBirth(picked);
    }
  }

  Widget _buildWeightInput(
    AppLocalization appLocalization,
    AppPalette palette,
    AppTypography typography,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppFormField(
            label: appLocalization.weight,
            prefixIcon: Icons.scale_outlined,
            validator: Validators.validateWeight,
          ),
        ),
        const SizedBox(width: 15),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            gradient: palette.primaryGradient,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              appLocalization.kg,
              style: typography.mediumText.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeightInput(
    AppLocalization appLocalization,
    AppPalette palette,
    AppTypography typography,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppFormField(
            label: appLocalization.height,
            prefixIcon: Icons.height_outlined,
            validator: Validators.validateHeight,
          ),
        ),
        const SizedBox(width: 15),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            gradient: palette.primaryGradient,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              appLocalization.cm,
              style: typography.mediumText.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
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
  ) {
    return ExpandedButton(
      text: appLocalization.confirm,
      onPressed: () => viewModel.previousStep(),
    );
  }
}
