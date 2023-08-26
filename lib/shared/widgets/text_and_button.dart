import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';

class TextAndButton extends StatelessWidget {
  const TextAndButton({
    required this.text, required this.textButton, super.key,
    this.onPressed,
  });
  final String text;
  final VoidCallback? onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child:  Text(
             textButton,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
