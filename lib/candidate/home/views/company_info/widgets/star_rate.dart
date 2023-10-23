import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StarRate extends StatelessWidget {
  const StarRate({
    required this.leading,
    required this.trailing,
    required this.percent,
    super.key,
  });

  final String leading;
  final String trailing;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.md),
      child: LinearPercentIndicator(
        lineHeight: 8,
        percent: percent,
        animation: true,
        animationDuration: 2000,
        backgroundColor: AppColors.kColorGray200,
        progressColor: AppColors.kOrangeColor400,
        barRadius: const Radius.circular(AppSpacing.md),
        leading: Text(
          leading,
          style: CustomTextStyles.titleMediumBlack,
        ),
        trailing: Text(
          trailing,
          style: CustomTextStyles.titleMediumBlack,
        ),
      ),
    );
  }
}
