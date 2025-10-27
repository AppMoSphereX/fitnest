import 'package:fitnest/config/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    TextEditingController? controller,
    String? label,
    IconData? prefixIcon,
    String? Function(String?)? validator,
    bool obscureText = false,
  }) : _controller = controller,
       _label = label,
       _prefixIcon = prefixIcon,
       _validator = validator,
       _obscureText = obscureText;

  final TextEditingController? _controller;
  final String? _label;
  final IconData? _prefixIcon;
  final String? Function(String?)? _validator;
  final bool _obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      validator: _validator,
      obscureText: _obscureText,
      style: context.typography.smallText,
      autovalidateMode: AutovalidateMode.onUnfocus,
      decoration: InputDecoration(
        label: _label != null ? Text(_label) : null,
        prefixIcon: Icon(_prefixIcon),
      ),
    );
  }
}
