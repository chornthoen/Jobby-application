import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemExploreMore extends StatelessWidget {
  const ItemExploreMore({
    required this.image,
    required this.title,
    required this.description,
    super.key,
    this.onPressed,
  });

  final String image;
  final String title;
  final String description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.7,
      margin: const EdgeInsets.only(right: AppSpacing.lg),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              image: AssetImage(image),
              height: 150,
              width: 150,
            ),
          ),
          Text(title, style: CustomTextStyles.bodyLargeSemiBoldBlack),
          const SizedBox(height: AppSpacing.sm),
          Text(description, style: CustomTextStyles.titleMediumRegularGray600),
          const Spacer(),
          Row(
            children: [
              TextButton(
                onPressed: onPressed,
                child:  Row(
                  children: [
                    Text(
                      'Explore Now',
                      style: CustomTextStyles.buttonMediumBlack,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    const Icon(
                      PhosphorIcons.arrow_right_bold,
                      color: AppColors.kPrimaryColor,
                      size: AppSpacing.xlg,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
        ],
      ),
    );
  }
}
