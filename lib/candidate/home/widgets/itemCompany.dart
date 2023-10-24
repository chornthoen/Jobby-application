
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemCompanyForYou extends StatelessWidget {
  const ItemCompanyForYou({
    required this.image,
    required this.title,
    required this.description,
    super.key,
    this.sizeBox = AppSpacing.md,
    this.onPressed,
  });

  final String image;
  final String title;
  final String description;
  final double? sizeBox;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width * 0.3,
        height: height * 0.1,
        margin: EdgeInsets.only(
          right: sizeBox ?? AppSpacing.md,
          bottom: AppSpacing.md,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: AppSpacing.sm,
          horizontal: AppSpacing.sm,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: AppSpacing.xxxlg + 6,
                  width: AppSpacing.xxxlg + 6,
                  padding: const EdgeInsets.all(AppSpacing.sm),
                  decoration: const BoxDecoration(
                    color: AppColors.kBlackColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage(image),
                    height: 16,
                    width: 16,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(AppSpacing.xxxs),
                    decoration: const BoxDecoration(
                      color: AppColors.kWhiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/verified.svg',
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(title, style: CustomTextStyles.titleSmallSemiBoldBlack),
            const SizedBox(height: AppSpacing.xs),
            Text(
              description,
              style: CustomTextStyles.titleSmallMediumGray600,
            ),
          ],
        ),
      ),
    );
  }
}
