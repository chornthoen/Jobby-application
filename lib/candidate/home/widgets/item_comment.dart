import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemCommentInEvent extends StatelessWidget {
  const ItemCommentInEvent({
    required this.image,
    required this.name,
    required this.date,
    required this.comment,
    required this.like,
    required this.share,
    required this.isLiked,
    super.key,
    this.onLikeTap,
  });

  final String image;
  final String name;
  final String date;
  final String comment;
  final int like;
  final int share;
  final bool isLiked;
  final VoidCallback? onLikeTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: AppSpacing.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: AppSpacing.xlg,
                backgroundColor: AppColors.kWhiteColor,
                backgroundImage: AssetImage(
                  image,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: CustomTextStyles.bodyLargeSemiBoldBlack,
                  ),
                  Text(
                    date,
                    style: CustomTextStyles.titleSmallMediumGray500,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          Text(comment, style: CustomTextStyles.titleMediumRegularGray600),
          Row(
            children: [
              TextButton.icon(
                onPressed: onLikeTap,
                icon: Icon(
                  isLiked
                      ? PhosphorIcons.thumbs_up_fill
                      : PhosphorIcons.thumbs_up,
                  color: isLiked
                      ? AppColors.kPrimaryColor
                      : AppColors.kColorGray500,
                  size: AppSpacing.xlg,
                ),
                label: Text('$like',
                    style: CustomTextStyles.titleMediumRegularGray500),
              ),
              const SizedBox(width: AppSpacing.md),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  PhosphorIcons.share,
                  color: AppColors.kColorGray500,
                  size: AppSpacing.xlg,
                ),
                label: Text(
                  '$share',
                  style: CustomTextStyles.titleMediumRegularGray500,
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.kColorGray200,
          ),
        ],
      ),
    );
  }
}
