
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    this.textTop,
    this.textBottom,
    this.color,
  });
  final String? textTop;
  final String? textBottom;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textTop!,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w600,
            color: AppColors.kPrimaryColor,
          ),
        ),
        Text(
          textBottom!,
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            decorationColor: color,
            decorationThickness: 2,
            fontSize: 34,
            fontWeight: FontWeight.w600,
            color: AppColors.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
