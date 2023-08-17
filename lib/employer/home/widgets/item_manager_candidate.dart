
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemManagerCandidate extends StatelessWidget {
  const ItemManagerCandidate({
    super.key,
    required this.image,
    required this.name,
    required this.position,
    required this.star,
    required this.status,
  });

  final String image;
  final String name;
  final String position;
  final String star;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 14),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              AppColors.kBoxShadowColor,
              AppColors.kBoxShadowColor1,
            ],
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    position,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kQuaternaryColor,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: star == '0'
                              ? AppColors.kGray200
                              : AppColors.kOrange200Color,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Text(
                              star,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: star == '0'
                                    ? AppColors.kTertiaryColor
                                    : AppColors.kOrange400Color,
                              ),
                            ),
                            const SizedBox(width: 4),
                            SvgPicture.asset(
                              'assets/svg/star-filled.svg',
                              width: 16,
                              height: 16,
                              color: star == '0'
                                  ? AppColors.kTertiaryColor
                                  : AppColors.kOrange400Color,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColors.kGray200,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Text(
                              status,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.kTertiaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.more_horiz,
                size: 24,
                color: AppColors.kQuaternaryColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
