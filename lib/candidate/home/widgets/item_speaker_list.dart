import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ItemSpeakerList extends StatelessWidget {
  const ItemSpeakerList({
    required this.image,
    required this.name,
    required this.position,
    super.key,
  });

  final String image;
  final String name;
  final String position;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.md),
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(AppSpacing.sm),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppSpacing.xxlg,
            backgroundColor: AppColors.kWhiteColor,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: CustomTextStyles.bodyLargeSemiBoldBlack),
              const SizedBox(height: AppSpacing.xs),
              Text(position, style: CustomTextStyles.titleMediumRegularGray600),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    required this.svg,
    required this.label,
    required this.value,
    super.key,
  });

  final String svg;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.xlg),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.16,
            child: Row(
              children: [
                SvgPicture.asset(
                  svg,
                  height: AppSpacing.xlg - 2,
                  width: AppSpacing.xlg - 2,
                  color: AppColors.kColorGray500,
                ),
                const SizedBox(width: AppSpacing.xs),
                Text(label, style: CustomTextStyles.titleMediumRegularGray600),
              ],
            ),
          ),
          Flexible(
            child: Text(value, style: CustomTextStyles.titleMediumRegularBlack),
          ),
        ],
      ),
    );
  }
}
