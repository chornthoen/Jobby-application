import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(width: 100),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            margin: const EdgeInsets.only(bottom: AppSpacing.xs),
            decoration: const BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSpacing.md),
                bottomLeft: Radius.circular(AppSpacing.md),
                topRight: Radius.circular(AppSpacing.md),
                bottomRight: Radius.circular(AppSpacing.xxs),
              ),
            ),
            child:
                Text(message, style: CustomTextStyles.titleMediumRegularWhite),
          ),
        ),
      ],
    );
  }
}
