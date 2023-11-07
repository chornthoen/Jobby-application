import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    required this.title, required this.icon, super.key,
    this.onPressed,
  });

  final String title;
  final String icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.xs),
          ),
          minVerticalPadding: 0,
          contentPadding: const EdgeInsets.only(
            left: AppSpacing.md,
            right: AppSpacing.xs,
          ),
          onTap: onPressed,
          title: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: AppSpacing.xlg,
                height: AppSpacing.xlg,
                color: title == 'Log out'
                    ? AppColors.kRedColor
                    : AppColors.kColorGray600,
              ),
              const SizedBox(width: AppSpacing.sm),
              Text(
                title,
                style: TextStyle(
                  color: title == 'Log out'
                      ? AppColors.kRedColor
                      : AppColors.kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: title == 'Log out'
                ? AppColors.kRedColor
                : AppColors.kColorGray600,
            size: AppSpacing.xlg - 2,
          ),
        ),
        const Divider(
          height: 1,
          color: AppColors.kColorGray300,
        ),
      ],
    );
  }
}
