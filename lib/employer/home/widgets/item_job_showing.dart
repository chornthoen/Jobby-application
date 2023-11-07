import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemJobShowing extends StatelessWidget {
  const ItemJobShowing({
    required this.title,
    required this.location,
    required this.jobType,
    required this.salary,
    required this.candidate,
    required this.onTap,
    super.key,
    this.isPaused,
    this.isExpired = false,
    this.onPressed,
  });

  final String title;
  final String location;
  final String jobType;
  final String salary;
  final String candidate;
  final VoidCallback onTap;
  final bool? isPaused;
  final bool? isExpired;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          const SizedBox(height: AppSpacing.sm),
          Container(
            padding: const EdgeInsets.all(AppSpacing.sm),
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
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: AppSpacing.lg,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: onTap,
                      child: const Icon(
                        Icons.more_horiz,
                        color: AppColors.kPrimaryColor,
                        size: AppSpacing.xlg,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.xs),
                if (isPaused!)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.xs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.kColorGray600,
                      borderRadius: BorderRadius.circular(AppSpacing.md),
                    ),
                    child: const Text(
                      'Paused',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                if (isExpired!)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.sm,
                      vertical: AppSpacing.xs,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.kColorRed400,
                      borderRadius: BorderRadius.circular(AppSpacing.md),
                    ),
                    child: const Text(
                      'Expired',
                      style: TextStyle(
                        color: AppColors.kWhiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                const SizedBox(height: AppSpacing.xs),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Location',
                            style: TextStyle(
                              color: AppColors.kColorGray500,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            location,
                            style: const TextStyle(
                              color: AppColors.kColorGray600,
                              fontSize: AppSpacing.lg,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.md),
                          const Text(
                            'Job Type',
                            style: TextStyle(
                              color: AppColors.kColorGray500,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            jobType,
                            style: const TextStyle(
                              color: AppColors.kColorGray600,
                              fontSize: AppSpacing.lg,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Salary',
                          style: TextStyle(
                            color: AppColors.kColorGray500,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          salary,
                          style: const TextStyle(
                            color: AppColors.kColorGray600,
                            fontSize: AppSpacing.lg,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.sm),
                        const Text(
                          'Candidate',
                          style: TextStyle(
                            color: AppColors.kColorGray500,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.xs),
                        Text(
                          candidate,
                          style: const TextStyle(
                            color: AppColors.kColorGray600,
                            fontSize: AppSpacing.lg,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
