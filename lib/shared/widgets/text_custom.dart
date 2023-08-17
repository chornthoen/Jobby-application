
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TextCustom extends StatelessWidget {
  const TextCustom({
    super.key,
    this.star = true,
    required this.text,
  });

  final bool star;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          star ? '*' : '',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.kRed400Color,
          ),
        ),
      ],
    );
  }
}
