import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/models/banner_home_model.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class ActionBorder extends StatelessWidget {
  const ActionBorder({
    required this.currentTab, super.key,
  });

  final int currentTab;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < listBanner.length; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: AppSpacing.xs),
            height: 2,
            width: 40,
            decoration: BoxDecoration(
              color: currentTab == i
                  ? AppColors.kBlackColor
                  : AppColors.kColorGray300,
              borderRadius: BorderRadius.circular(AppSpacing.sm),
            ),
          ),
      ],
    );
  }
}
