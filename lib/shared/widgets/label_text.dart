
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class LabelText extends StatelessWidget {
  const LabelText({
    required this.text, super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.kPrimaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
