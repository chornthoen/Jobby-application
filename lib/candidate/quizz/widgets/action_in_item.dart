import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ActionInItem extends StatelessWidget {
  const ActionInItem({
    required this.svgPath, required this.text, super.key,
  });

  final String svgPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          height: 16,
          width: 16,
        ),
        const SizedBox(width: AppSpacing.xs),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.kColorGray600,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
