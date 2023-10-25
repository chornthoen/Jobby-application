import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class AvatarRank extends StatelessWidget {
  const AvatarRank({
    required this.image,
    required this.name,
    required this.diamond,
    required this.rank,
    super.key,
    this.color1,
    this.color2,
    this.number,
    this.colorName = AppColors.kWhiteColor,
  });

  final String image;
  final String name;
  final String diamond;
  final String rank;
  final Color? color1;
  final Color? color2;
  final String? number;
  final Color? colorName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: AppSpacing.xxxlg * 2.2,
          child: Stack(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(AppSpacing.xxs),
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.kWhiteColor,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.kColorRed400,
                        AppColors.kColorBlue300,
                      ],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: AppSpacing.xxxlg + 6,
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  rank,
                  width: AppSpacing.xlg - 2,
                  height: AppSpacing.xlg - 2,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  number!,
                  width: AppSpacing.xlg - 2,
                  height: AppSpacing.xlg - 2,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: colorName,
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/diamond-color.svg',
              width: AppSpacing.lg,
              height: AppSpacing.lg,
            ),
            const SizedBox(width: AppSpacing.xs),
            Text(
              diamond,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
