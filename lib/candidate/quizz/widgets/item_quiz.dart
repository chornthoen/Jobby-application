import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/quizz/widgets/action_in_item.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

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
              top: 1,
              left: 1,
              right: 1,
              bottom: 6,
            ),
            margin: const EdgeInsets.only(
              bottom: 14,
              right: 16,
              left: 16,
            ),
            decoration: BoxDecoration(
              color: AppColors.kSeptenaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(width: 8),
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
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.kSenaryColor,
                              borderRadius: BorderRadius.circular(6),
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
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          ActionInItem(
                            svgPath: 'assets/svg/arcade.svg',
                            text: level,
                          ),
                          const SizedBox(width: 14),
                          ActionInItem(
                            svgPath: 'assets/svg/question.svg',
                            text: question,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          ActionInItem(
                            svgPath: 'assets/svg/like.svg',
                            text: like,
                          ),
                          const SizedBox(width: 14),
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
