import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  const ExpandedButton({
    this.onPressed,
    this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.isLoading = false,
    super.key,
  });

  final VoidCallback? onPressed;
  final String? text;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: isLoading ? null : onPressed,
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (prefixIcon != null) Icon(prefixIcon, size: 20),
                          if (prefixIcon != null && text != null)
                            SizedBox(width: 4),
                          if (text != null) Text(text!),
                          if (suffixIcon != null && text != null)
                            SizedBox(width: 4),
                          if (suffixIcon != null) Icon(suffixIcon, size: 20),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
