import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemEbook extends StatelessWidget {
  const ItemEbook({
    required this.image,
    required this.title,
    required this.date,
    required this.name,
    super.key,
    this.onPressed,
    this.isSaved = false,
    this.onSaved,
  });

  final VoidCallback? onPressed;
  final String image;
  final String title;
  final String date;
  final String name;
  final bool isSaved;
  final VoidCallback? onSaved;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: AppSpacing.md),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.md,
          horizontal: AppSpacing.md,
        ),
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          boxShadow: [
            AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1,
          ],
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(image),
              height: 88,
              width: 88,
            ),
            const SizedBox(width: AppSpacing.sm),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: CustomTextStyles.bodyLargeSemiBoldBlack),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/user.svg',
                        height: AppSpacing.xlg,
                        width: AppSpacing.xlg,
                        color: AppColors.kColorGray500,
                      ),
                      const SizedBox(width: AppSpacing.sm),
                      Text(
                        name,
                        style: CustomTextStyles.titleMediumRegularGray500,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.calendar_blank,
                            size: AppSpacing.xlg - 2,
                            color: AppColors.kColorGray500,
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Text(
                            date,
                            style: CustomTextStyles.titleMediumRegularGray500,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onSaved,
                        child: Icon(
                          isSaved
                              ? PhosphorIcons.bookmark_simple_fill
                              : PhosphorIcons.bookmark_simple,
                          size: AppSpacing.xlg,
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
