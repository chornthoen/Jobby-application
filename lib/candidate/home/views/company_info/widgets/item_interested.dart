import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemInterested extends StatelessWidget {
  const ItemInterested({
    required this.image,
    required this.nameCompany,
    required this.location,
    super.key,
    this.onTab,
    this.isFollow,
    this.follow = false,
  });

  final String image;
  final String nameCompany;
  final String location;
  final VoidCallback? onTab;
  final VoidCallback? isFollow;
  final bool follow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: AppSpacing.lg),
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.md),
            decoration: const BoxDecoration(
              color: AppColors.kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              width: 32,
              height: 32,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nameCompany, style: CustomTextStyles.bodyLargeSemiBoldBlack),
              const SizedBox(height: AppSpacing.sm),
              Text(location, style: CustomTextStyles.titleSmallMediumGray600),
            ],
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: isFollow,
            icon: Icon(
              follow
                  ? PhosphorIcons.check_circle_fill
                  : PhosphorIcons.plus_circle_fill,
              color:
                  follow ? AppColors.kOrangeColor400 : AppColors.kPrimaryColor,
              size: AppSpacing.xlg,
            ),
            label: Text(
              follow ? 'Following' : 'Follow',
              style: TextStyle(
                color: follow
                    ? AppColors.kOrangeColor400
                    : AppColors.kPrimaryColor,
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
