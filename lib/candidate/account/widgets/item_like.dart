
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ItemLike extends StatelessWidget {
  const ItemLike({
    super.key,
    this.imagePath,
  });

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: const BoxDecoration(
        color: AppColors.kColorGray200,
        shape: BoxShape.circle,
      ),
      child: Image(
        image: AssetImage(imagePath!),
        width: AppSpacing.xlg,
        height: AppSpacing.xlg,
      ),
    );
  }
}
