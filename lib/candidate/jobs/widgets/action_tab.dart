import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';


class ActionTop extends StatefulWidget {
  const ActionTop({
    required this.title, super.key,
  });
  final String title;

  @override
  State<ActionTop> createState() => _ActionTopState();
}

class _ActionTopState extends State<ActionTop> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
          },
          child:  Text(
            'Clear all',
            style: CustomTextStyles.buttonMediumBlack,
          ),
        ),
         Text(
          widget.title,
          style: CustomTextStyles.headlineSmallMedium,
        ),
        GestureDetector(
          onTap: () {
            context.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: const BoxDecoration(
              color: AppColors.kColorGray200,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              PhosphorIcons.x,
              color: AppColors.kColorGray600,
              size: AppSpacing.xlg,
            ),
          ),
        ),
      ],
    );
  }
}
