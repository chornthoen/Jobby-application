import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemLeaderboard extends StatelessWidget {
  const ItemLeaderboard({
    required this.id,
    required this.image,
    required this.name,
    required this.diamond,
    super.key,
  });

  final int id;
  final String image;
  final String name;
  final String diamond;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '$id',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            CircleAvatar(
              radius: AppSpacing.xxlg,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: AppSpacing.md),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              ),
            ),
            const Spacer(),
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
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        //divider
        const Divider(
          color: AppColors.kColorGray600,
          thickness: 1,
        ),
      ],
    );
  }
}
