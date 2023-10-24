import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class MessageOther extends StatelessWidget {
  const MessageOther({
    super.key,
    required this.message,
    this.image,
    this.index,
  });

  final String message;
  final String? image;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // if (index == 0)
          SizedBox(
            child: CircleAvatar(
              radius: AppSpacing.lg,
              backgroundColor: AppColors.kWhiteColor,
              backgroundImage: AssetImage(image!),
            ),
          ),
          //if (index != 0) const SizedBox(width: 26),
          const SizedBox(width: AppSpacing.sm),
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(AppSpacing.sm),
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSpacing.md),
                  bottomLeft: Radius.circular(AppSpacing.xxs),
                  topRight: Radius.circular(AppSpacing.md),
                  bottomRight: Radius.circular(AppSpacing.md),
                ),
                border: Border.all(
                  color: AppColors.kColorGray400,
                ),
              ),
              child: Text(
                message,
                style: CustomTextStyles.titleMediumRegularBlack,
              ),
            ),
          ),
          const SizedBox(width: 100),
        ],
      ),
    );
  }
}
