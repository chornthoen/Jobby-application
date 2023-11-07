import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class TabCustom extends StatelessWidget {
  const TabCustom({
    required this.title, super.key,
    this.number,
  });

  final String title;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.kPrimaryColor),
      ),
      child: Align(
        child: Row(
          children: [
            Text(title),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: number == ''
                    ? Colors.transparent
                    : AppColors.kColorGray300,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number ?? '',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ItemAction extends StatelessWidget {
  const ItemAction({
    required this.icon, super.key,
    this.title,
    this.onTap,
  });

  final String? title;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          minVerticalPadding: 0,
          contentPadding: const EdgeInsets.only(
            left: AppSpacing.sm,
            right: AppSpacing.xs,
          ),
          title: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: AppSpacing.xlg,
                height: AppSpacing.xlg,
                color: title == 'Delete'
                    ? AppColors.kRedColor
                    : AppColors.kColorGray600,
              ),
              const SizedBox(width: AppSpacing.sm),
              Text(
                title!,
                style:  TextStyle(
                  fontSize: AppSpacing.lg,
                  fontWeight: FontWeight.w500,
                  color: title == 'Delete'
                      ? AppColors.kRedColor
                      : AppColors.kColorGray600,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: AppSpacing.xxxs,
          color: AppColors.kColorGray300,
        ),
      ],
    );
  }
}
