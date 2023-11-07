
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class IconAndText extends StatelessWidget {
  const IconAndText({
    required this.svg, required this.text, super.key,
  });

  final String svg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            svg,
            width: AppSpacing.xlg - 2,
            height: AppSpacing.xlg - 2,
            color: AppColors.kColorGray600,
          ),
          const SizedBox(width: AppSpacing.sm),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.kColorGray600,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
