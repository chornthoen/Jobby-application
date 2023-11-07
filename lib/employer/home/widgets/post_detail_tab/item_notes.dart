import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemNotes extends StatelessWidget {
  const ItemNotes({
    required this.image,
    required this.name,
    required this.date,
    required this.note,
    super.key,
    this.onEdit,
    this.onDelete,
  });

  final String image;
  final String name;
  final String date;
  final String note;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xs,
        vertical: AppSpacing.sm,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: AppSpacing.xlg + 2,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: AppSpacing.sm),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: AppSpacing.lg,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kColorGray600,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.md),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: AppSpacing.lg,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kColorGray600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: onEdit,
                          child: const Icon(
                            PhosphorIcons.pencil_simple,
                            size: AppSpacing.xlg - 2,
                            color: AppColors.kColorGray700,
                          ),
                        ),
                        const SizedBox(width: AppSpacing.lg),
                        GestureDetector(
                          onTap: onDelete,
                          child: const Icon(
                            PhosphorIcons.trash,
                            size: AppSpacing.xlg - 2,
                            color: AppColors.kColorGray700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  note,
                  style: const TextStyle(
                    fontSize: AppSpacing.lg,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
                const SizedBox(height: AppSpacing.xs),
                const Divider(
                  color: AppColors.kColorGray300,
                  thickness: AppSpacing.xxxs,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
