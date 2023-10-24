import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemBlog extends StatelessWidget {
  const ItemBlog({
    required this.image,
    required this.title,
    required this.read,
    required this.date,
    super.key,
    this.onPressed,
    this.onBookmark,
    this.isBookmark = false,
  });

  final VoidCallback? onPressed;
  final String image;
  final String title;
  final int read;
  final String date;
  final bool isBookmark;
  final VoidCallback? onBookmark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
            padding: const EdgeInsets.only(bottom: AppSpacing.lg),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
              boxShadow: [
                AppColors.kBoxShadowColor,
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(AppSpacing.sm),
                      topRight: Radius.circular(AppSpacing.sm),
                    ),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    title,
                    style: CustomTextStyles.bodyLargeSemiBoldBlack,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.sm,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.calendar_blank,
                            color: AppColors.kColorGray500,
                            size: AppSpacing.xlg - 2,
                          ),
                          const SizedBox(width: AppSpacing.xs),
                          Text(
                            date,
                            style: CustomTextStyles.titleMediumRegularGray500,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.clock,
                            color: AppColors.kColorGray500,
                            size: AppSpacing.xlg - 2,
                          ),
                          const SizedBox(width: AppSpacing.xs),
                          Text(
                            '$read min read',
                            style: CustomTextStyles.titleMediumRegularGray500,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onBookmark,
                        child: Icon(
                          isBookmark
                              ? PhosphorIcons.bookmark_simple_fill
                              : PhosphorIcons.bookmark_simple,
                          color: AppColors.kPrimaryColor,
                          size: AppSpacing.xlg,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
