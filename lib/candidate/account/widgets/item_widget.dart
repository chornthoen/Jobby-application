import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    required this.svgPath,
    required this.title,
    required this.description,
    super.key,
    this.color,
    this.isStar = false,
  });

  final String svgPath;
  final String title;
  final String description;
  final Color? color;
  final bool? isStar;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgPath,
              width: 22,
              height: 22,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(
            title,
            style: CustomTextStyles.titleMediumRegularGray500,
          ),
          const SizedBox(height: AppSpacing.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                description,
                style: CustomTextStyles.titleSmallBlack,
              ),
              const SizedBox(width: AppSpacing.xs),
              if (isStar!)
                const Icon(
                  PhosphorIcons.star_fill,
                  size: AppSpacing.lg,
                  color: AppColors.kOrangeColor400,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
