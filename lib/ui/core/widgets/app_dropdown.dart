import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class AppDropdown extends StatelessWidget {
  const AppDropdown({
    super.key,
    required this.items,
    required this.onChanged,
    required this.validator,
    required this.hint,
    this.initialValue,
  });

  final List<DropdownMenuItem<String>> items;
  final void Function(String?) onChanged;
  final String? Function(String?)? validator;
  final String hint;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      initialValue: initialValue,
      items: items,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.person_outline, size: 20),
        suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
        suffixIconColor: context.palette.inputIconColor,
        fillColor: context.palette.inputFillColor,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      ),
      hint: Text(hint),
      style: context.typography.smallText,
    );
  }
}
