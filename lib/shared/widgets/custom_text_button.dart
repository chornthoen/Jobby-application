import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text, required this.onPressed, super.key,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child:  Text(
        text,
        style: CustomTextStyles.buttonMediumBlack
      ),
    );
  }
}
