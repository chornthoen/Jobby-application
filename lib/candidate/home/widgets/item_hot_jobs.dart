import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';

class ItemHotJobs extends StatelessWidget {
  const ItemHotJobs({
    required this.title,
    required this.name,
    required this.image,
    required this.salary,
    required this.time,
    required this.role,
    required this.date,
    super.key,
    this.color,
    this.onSaved,
    this.onApply,
    this.sizeBox = 14,
    this.isSaved = false,
    this.sizeBox1 = 1,
  });

  final String title;
  final String name;
  final String image;
  final String salary;
  final String time;
  final String role;
  final String date;
  final Color? color;
  final VoidCallback? onSaved;
  final VoidCallback? onApply;
  final double? sizeBox;
  final double? sizeBox1;
  final bool isSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: sizeBox1 ?? 1,
        bottom: sizeBox ?? 14,
      ),
      padding: const EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(AppSpacing.sm),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(AppSpacing.md),
                ),
                child: Image(
                  image: AssetImage(image),
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: CustomTextStyles.bodyLargeSemiBoldBlack,
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Text(
                    '$name • $salary',
                    style: CustomTextStyles.titleSmallMediumGray600,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      onSaved!();
                      if (isSaved == false) {
                        SnackBarTop.topSnackBarLottie(
                          context,
                          'Saved Successfully!',
                        );
                      } else {
                        SnackBarTop.topSnackBarLottie(
                          context,
                          'Unsaved Successfully!',
                        );
                      }
                    },
                    child: Icon(
                      isSaved == true
                          ? PhosphorIcons.bookmark_simple_fill
                          : PhosphorIcons.bookmark_simple,
                      color: isSaved == true
                          ? AppColors.kPrimaryColor
                          : AppColors.kColorGray500,
                      size: AppSpacing.xlg,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    date,
                    style: CustomTextStyles.titleSmallMediumGray500,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.sm,
                          vertical: AppSpacing.xs,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColorGray100,
                          borderRadius: BorderRadius.circular(AppSpacing.sm),
                        ),
                        child: Text(
                          time,
                          style: CustomTextStyles.bodySmallMediumGray600,
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                          vertical: AppSpacing.sm,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColorGray100,
                          borderRadius: BorderRadius.circular(AppSpacing.sm),
                        ),
                        child: Text(
                          role,
                          style: CustomTextStyles.bodySmallMediumGray600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: onApply,
                child: Row(
                  children: [
                    Text(
                      'Apply',
                      style: CustomTextStyles.buttonTitleSmallSemiBoldBlack,
                    ),
                    const SizedBox(width: AppSpacing.xs),
                    const Icon(
                      PhosphorIcons.arrow_right,
                      color: AppColors.kPrimaryColor,
                      size: AppSpacing.xlg - 6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
