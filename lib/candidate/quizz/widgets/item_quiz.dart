import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/quizz/widgets/action_in_item.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemQuizs extends StatelessWidget {
  const ItemQuizs({
    required this.image,
    required this.title,
    required this.level,
    required this.question,
    required this.user,
    required this.like,
    required this.percent,
    required this.onPressed,
    super.key,
  });

  final String image;
  final String title;
  final String level;
  final String question;
  final String user;
  final String like;
  final String percent;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: AppSpacing.xxxs,
              left: AppSpacing.xxxs,
              right: AppSpacing.xxxs,
              bottom: AppSpacing.xs + 2,
            ),
            margin: const EdgeInsets.only(
              bottom: AppSpacing.md,
              right: AppSpacing.lg,
              left: AppSpacing.lg,
            ),
            decoration: BoxDecoration(
              color: AppColors.kColorGray300,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.sm,
                vertical: AppSpacing.md,
              ),
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(AppSpacing.sm),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: AppColors.kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSpacing.xs,
                              vertical: AppSpacing.xs,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.kColorGray400,
                              borderRadius: BorderRadius.circular(
                                AppSpacing.sm,
                              ),
                            ),
                            child: Text(
                              percent,
                              style: const TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Row(
                        children: [
                          ActionInItem(
                            svgPath: 'assets/svg/arcade.svg',
                            text: level,
                          ),
                          const SizedBox(width: AppSpacing.md),
                          ActionInItem(
                            svgPath: 'assets/svg/question.svg',
                            text: question,
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.xs),
                      Row(
                        children: [
                          ActionInItem(
                            svgPath: 'assets/svg/like.svg',
                            text: like,
                          ),
                          const SizedBox(width: AppSpacing.md),
                          ActionInItem(
                            svgPath: 'assets/svg/users.svg',
                            text: user,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
