import 'package:fitnest/config/constants/assets.dart';
import 'package:fitnest/config/theme/app_palette.dart';
import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:fitnest/config/theme/typography.dart';
import 'package:fitnest/ui/core/localization/app_localization.dart';
import 'package:fitnest/ui/core/localization/localization_extensions.dart';
import 'package:fitnest/ui/core/widgets/app_dropdown.dart';
import 'package:fitnest/ui/core/widgets/app_form_field.dart';
import 'package:fitnest/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BasicProfileCompletion extends StatefulWidget {
  const BasicProfileCompletion({
    super.key,
    required this.onDateSelected,
    required this.onGenderSelected,
    required this.onWeightSelected,
    required this.onHeightSelected,
    this.gender,
    this.dateOfBirth,
    this.weight,
    this.height,
  });

  final Function(DateTime) onDateSelected;
  final Function(String) onGenderSelected;
  final Function(double) onWeightSelected;
  final Function(double) onHeightSelected;
  final String? gender;
  final DateTime? dateOfBirth;
  final double? weight;
  final double? height;

  @override
  State<BasicProfileCompletion> createState() => _BasicProfileCompletionState();
}

class _BasicProfileCompletionState extends State<BasicProfileCompletion> {
  late final TextEditingController weightController;
  late final TextEditingController heightController;
  late final TextEditingController dateOfBirthController;

  @override
  void initState() {
    super.initState();
    weightController = TextEditingController(
      text: widget.weight?.toString() ?? '',
    );
    heightController = TextEditingController(
      text: widget.height?.toString() ?? '',
    );
    dateOfBirthController = TextEditingController(
      text: widget.dateOfBirth?.toString() ?? '',
    );
  }

  @override
  void dispose() {
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appLocalization = context.localization;
    final typography = context.typography;
    final palette = context.palette;

    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
        bottom: 30.0,
        left: 30.0,
        right: 30.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.profileCompletion),
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
            _buildGenderInput(
              appLocalization,
              typography,
              widget.gender,
              widget.onGenderSelected,
            ),
            const SizedBox(height: 15),
            _buildBirthDateInput(
              context: context,
              dateOfBirth: widget.dateOfBirth,
              onDateSelected: widget.onDateSelected,
              typography: typography,
              appLocalization: appLocalization,
              palette: palette,
            ),
            const SizedBox(height: 15),
            _buildWeightInput(
              appLocalization,
              palette,
              typography,
              widget.weight,
              widget.onWeightSelected,
            ),
            const SizedBox(height: 15),
            _buildHeightInput(
              appLocalization,
              palette,
              typography,
              widget.height,
              widget.onHeightSelected,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGenderInput(
    AppLocalization appLocalization,
    AppTypography typography,
    String? gender,
    Function(String) onGenderSelected,
  ) {
    return AppDropdown(
      initialValue: gender,
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
      onChanged: (value) => onGenderSelected(value as String),
      validator: Validators.validateGender,
      hint: appLocalization.selectGender,
    );
  }

  Widget _buildBirthDateInput({
    required BuildContext context,
    required AppTypography typography,
    required AppLocalization appLocalization,
    required AppPalette palette,
    required Function(DateTime) onDateSelected,
    DateTime? dateOfBirth,
  }) {
    return TextFormField(
      readOnly: true,
      onTap: () => _selectDate(
        context: context,
        initialDate: dateOfBirth,
        onDateSelected: onDateSelected,
      ),
      controller: TextEditingController(
        text: dateOfBirth != null
            ? DateFormat('dd/MM/yyyy').format(dateOfBirth)
            : '',
      ),
      style: typography.smallText,
      validator: Validators.validateDateOfBirth,
      decoration: InputDecoration(
        hintText: dateOfBirth == null ? appLocalization.dateOfBirth : null,
        prefixIcon: Icon(Icons.calendar_month_outlined, size: 20),
        prefixIconColor: palette.inputIconColor,
      ),
    );
  }

  Future<void> _selectDate({
    required BuildContext context,
    required Function(DateTime) onDateSelected,
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
      onDateSelected(picked);
    }
  }

  Widget _buildWeightInput(
    AppLocalization appLocalization,
    AppPalette palette,
    AppTypography typography,
    double? weight,
    Function onWeightSelected,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppFormField(
            controller: weightController,
            onChanged: (value) => onWeightSelected(double.parse(value)),
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
    double? height,
    Function(double) onHeightSelected,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: AppFormField(
            controller: heightController,
            onChanged: (value) => onHeightSelected(double.parse(value)),
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
}
