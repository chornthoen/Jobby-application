import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class WidgetOr extends StatelessWidget {
  const WidgetOr({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.kSenaryColor,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kQuinaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.kSenaryColor,
          ),
        ),
      ],
    );
  }
}
