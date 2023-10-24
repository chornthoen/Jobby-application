import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemEvent extends StatelessWidget {
  const ItemEvent({
    required this.image,
    required this.title,
    required this.date,
    required this.day,
    required this.month,
    required this.count,
    required this.status,
    super.key,
    this.onPressed,
    this.isSaved = false,
    this.onSaved,
  });

  final VoidCallback? onPressed;
  final String image;
  final String title;
  final String date;
  final String day;
  final String month;
  final String count;
  final bool isSaved;
  final VoidCallback? onSaved;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            padding: const EdgeInsets.only(bottom: AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
              boxShadow: [
                AppColors.kBoxShadowColor,
                AppColors.kBoxShadowColor1,
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppSpacing.sm),
                          topRight: Radius.circular(AppSpacing.sm),
                        ),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: AppSpacing.sm,
                      left: AppSpacing.sm,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                          vertical: AppSpacing.xs,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColorBlue400,
                          borderRadius: BorderRadius.circular(AppSpacing.xxxlg),
                        ),
                        child: Text(
                          status,
                          style: CustomTextStyles.buttonMediumWhite,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -1,
                      left: AppSpacing.sm,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                          vertical: AppSpacing.xs,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.kWhiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSpacing.sm),
                            topRight: Radius.circular(AppSpacing.sm),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              day,
                              style: CustomTextStyles.headlineMediumSemiBold,
                            ),
                            Text(
                              month,
                              style: CustomTextStyles.titleMediumBlack,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    title,
                    style: CustomTextStyles.bodyLargeSemiBoldBlack,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.calendar_blank,
                            color: AppColors.kColorGray500,
                            size: AppSpacing.xlg,
                          ),
                          const SizedBox(width: AppSpacing.xs),
                          Text(
                            date,
                            style: CustomTextStyles.titleMediumRegularGray600,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/users.svg',
                            height: AppSpacing.xlg,
                            width: AppSpacing.xlg,
                            color: AppColors.kColorGray500,
                          ),
                          const SizedBox(width: AppSpacing.xs),
                          Text(
                            count,
                            style: CustomTextStyles.titleMediumRegularGray600,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onSaved,
                        child: Icon(
                          isSaved
                              ? PhosphorIcons.bookmark_simple_fill
                              : PhosphorIcons.bookmark_simple,
                          color: AppColors.kPrimaryColor,
                          size: AppSpacing.xlg,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
