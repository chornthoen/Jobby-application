import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

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
        style:const TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
