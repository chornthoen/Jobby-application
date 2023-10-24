import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemTrending extends StatelessWidget {
  const ItemTrending({
    required this.svgPath,
    required this.title,
    required this.description,
    super.key,
    this.color,
    this.sizeBox = AppSpacing.md,
    this.colorBackground,
  });

  final String svgPath;
  final String title;
  final String description;
  final Color? color;
  final double? sizeBox;
  final Color? colorBackground;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      width: width * 0.3,
      margin: EdgeInsets.only(right: sizeBox ?? AppSpacing.md),
      padding: const EdgeInsets.all(AppSpacing.sm),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: BoxDecoration(
              color: colorBackground,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgPath,
              height: AppSpacing.xlg,
              width: AppSpacing.xlg,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(height: AppSpacing.md),
          Text(title, style: CustomTextStyles.titleSmallSemiBoldBlack),
          const SizedBox(height: AppSpacing.xs),
          Text(description, style: CustomTextStyles.titleSmallMediumGray600),
        ],
      ),
    );
  }
}
