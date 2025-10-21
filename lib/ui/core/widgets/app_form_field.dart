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
      autovalidateMode: AutovalidateMode.onUnfocus,
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
          borderSide: BorderSide.none,
        ),
        label: _label != null
            ? Text(
                _label,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFADA4A5),
                ),
              )
            : null,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(_prefixIcon),
        fillColor: Color.fromARGB(255, 247, 248, 248),
        iconColor: Color.fromARGB(255, 123, 111, 114),
      ),
    );
  }
}
