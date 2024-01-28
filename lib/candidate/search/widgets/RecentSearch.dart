import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({
    super.key,
    this.onTap,
    this.title = '',
  });

  final VoidCallback? onTap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.all(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
      dense: true,
      title: Row(
        children: [
          const Icon(
            PhosphorIcons.clock,
            color: AppColors.kPrimaryColor,
            size: AppSpacing.xlg,
          ),
          const SizedBox(width: AppSpacing.sm),
          Text(
            title!,
            style: const TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
