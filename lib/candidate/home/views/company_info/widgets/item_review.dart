import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/star_5.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemReviews extends StatelessWidget {
  const ItemReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.xlg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ideal working environment',
            style: CustomTextStyles.titleMediumSemiBoldBlack,
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              const Star5(),
              const SizedBox(width: AppSpacing.sm),
              Text(
                '2 days ago',
                style: CustomTextStyles.titleSmallMediumGray600,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Text(
            'Tmrw studio owns, manages and operates a system of Trade Centers'
            ' - A shopping, entertainment and culinary paradise with'
            ' 4 brand lines.',
            style: CustomTextStyles.titleMediumRegularGray600,
          ),
          const SizedBox(height: AppSpacing.md),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: AppColors.kColorGray200,
          ),
        ],
      ),
    );
  }
}
