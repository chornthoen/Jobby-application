import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

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
          style: CustomTextStyles.titleMediumGray500,
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
