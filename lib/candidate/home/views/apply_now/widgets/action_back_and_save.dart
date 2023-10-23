import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ActionBackAndSave extends StatelessWidget {
  const ActionBackAndSave({
    super.key,
    this.onSaved,
    this.isSaved,
  });

  final VoidCallback? onSaved;
  final bool? isSaved;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 13,
      right: 13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kWhiteColor.withOpacity(0.3),
              ),
              child: const Icon(
                PhosphorIcons.arrow_left,
                color: AppColors.kPrimaryColor,
                size: AppSpacing.xlg,
              ),
            ),
          ),
          GestureDetector(
            onTap: onSaved,
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.kWhiteColor.withOpacity(0.3),
              ),
              child: Icon(
                isSaved!
                    ? PhosphorIcons.bookmark_simple_fill
                    : PhosphorIcons.bookmark_simple,
                color: AppColors.kPrimaryColor,
                size: AppSpacing.xlg,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
