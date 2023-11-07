import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemCandidateDetail extends StatelessWidget {
  const ItemCandidateDetail({
    required this.name,
    required this.image,
    required this.date,
    super.key,
  });

  final String name;
  final String image;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.lg),
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
        border: Border.all(color: AppColors.kColorGray300),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: AppSpacing.xxlg,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(width: AppSpacing.md),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        SvgPicture.asset(
                          'assets/svg/star-outline.svg',
                          width: AppSpacing.xlg - 2,
                          height: AppSpacing.xlg - 2,
                          color: AppColors.kColorGray500,
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.sm),
          Row(
            children: [
              const Text(
                'Applied: ',
                style: TextStyle(
                  fontSize: AppSpacing.lg,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kColorGray600,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: AppSpacing.lg,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
