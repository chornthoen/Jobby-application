import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/list_review.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/star_rate.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

class TabReviews extends StatefulWidget {
  const TabReviews({super.key});

  @override
  State<TabReviews> createState() => _TabReviewsState();
}

class _TabReviewsState extends State<TabReviews> {
  bool isNext = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xlg),
      color: AppColors.kWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            '4.5',
                            style: CustomTextStyles.displayMediumBlack,
                          ),
                          const Icon(
                            PhosphorIcons.star_fill,
                            color: AppColors.kOrangeColor400,
                            size: AppSpacing.xxlg,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    '100 reviews',
                    style: CustomTextStyles.bodyMediumBlack,
                  ),
                ],
              ),
              const SizedBox(width: AppSpacing.xlg),
              const Expanded(
                child: Column(
                  children: [
                    StarRate(
                      leading: '5 star',
                      trailing: '244',
                      percent: 0.8,
                    ),
                    StarRate(
                      leading: '4 star',
                      trailing: '244',
                      percent: 0.7,
                    ),
                    StarRate(
                      leading: '3 star',
                      trailing: '244',
                      percent: 0.5,
                    ),
                    StarRate(
                      leading: '2 star',
                      trailing: '244',
                      percent: 0.3,
                    ),
                    StarRate(
                      leading: '1 star',
                      trailing: '244',
                      percent: 0.1,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xlg),
          ButtonOutLineAction(
            text: 'Write a review',
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews',
                style: CustomTextStyles.headlineSmallBold,
              ),
              const SizedBox(width: AppSpacing.md),
              TextButton.icon(
                onPressed: () {
                  setState(() {
                    isNext = !isNext;
                  });
                },
                label: Text(
                  'Newest',
                  style: CustomTextStyles.titleMediumBlack,
                ),
                icon: Icon(
                  isNext ? PhosphorIcons.caret_up : PhosphorIcons.caret_down,
                  color: AppColors.kPrimaryColor,
                  size: AppSpacing.xlg,
                ),
              ),
            ],
          ),
          if (isNext) const ListReview(),
          const SizedBox(height: AppSpacing.xlg),
        ],
      ),
    );
  }
}
