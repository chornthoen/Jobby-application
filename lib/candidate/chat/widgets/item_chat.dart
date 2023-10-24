import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemChat extends StatelessWidget {
  const ItemChat({
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.message,
    required this.time,
    super.key,
    this.isMessageRead = false,
    this.online = false,
    this.isVerified = false,
    this.onTap,
    this.countMessage,
  });

  final int id;
  final String avatarUrl;
  final String name;
  final String message;
  final String time;
  final bool isMessageRead;
  final bool online;
  final bool isVerified;
  final int? countMessage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.xs,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.md,
        ),
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(AppSpacing.md),
          border: Border.all(color: AppColors.kColorGray100),
          boxShadow: [
            AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1,
          ],
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  foregroundColor: AppColors.kWhiteColor,
                  backgroundColor: AppColors.kWhiteColor,
                  backgroundImage: AssetImage(avatarUrl),
                  radius: 28,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(AppSpacing.sm - 2),
                    decoration: BoxDecoration(
                      color: online
                          ? AppColors.kGreenColor
                          : AppColors.kColorGray400,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.kWhiteColor,
                        width: AppSpacing.xxs,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: AppSpacing.sm),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: CustomTextStyles.bodyLargeSemiBoldBlack,
                      ),
                      const SizedBox(width: AppSpacing.xs),
                      if (isVerified)
                        SvgPicture.asset(
                          'assets/svg/verified.svg',
                          width: AppSpacing.lg,
                          height: AppSpacing.lg,
                        ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          message,
                          style: isMessageRead
                              ? CustomTextStyles.titleMediumRegularBlack
                              : CustomTextStyles.titleMediumRegularGray500,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(time, style: CustomTextStyles.titleSmallMediumGray500),
                const SizedBox(height: AppSpacing.xxs),
                if (isMessageRead)
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.xs),
                    decoration: const BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      countMessage.toString(),
                      style: CustomTextStyles.titleSmallRegularWhite,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
