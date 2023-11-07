import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemHiringTeam extends StatelessWidget {
  const ItemHiringTeam({
    required this.image,
    required this.name,
    required this.position,
    required this.onPressed,
    super.key,
  });

  final String image;
  final String name;
  final String position;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSpacing.lg),
            margin: const EdgeInsets.only(bottom: AppSpacing.sm),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
              boxShadow: [
                AppColors.kBoxShadowColor,
                AppColors.kBoxShadowColor1,
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: AppSpacing.xxlg,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
                const SizedBox(width: AppSpacing.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      position,
                      style: const TextStyle(
                        color: AppColors.kColorGray600,
                        fontSize: AppSpacing.lg,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  PhosphorIcons.pencil_simple,
                  size: AppSpacing.xlg,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
