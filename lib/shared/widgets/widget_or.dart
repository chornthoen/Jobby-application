import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';

class WidgetOr extends StatelessWidget {
  const WidgetOr({
    required this.text, super.key,
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
            color: AppColors.kColorGray400,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kColorGray500,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.kColorGray400,
          ),
        ),
      ],
    );
  }
}
