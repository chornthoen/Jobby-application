import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PointsLine extends StatelessWidget {
  const PointsLine({
    super.key,
    required this.percent,
    required this.color,
  });
  final double percent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      animation: true,
      animationDuration: 1500,
      lineHeight: 8,
      percent: percent,
      progressColor: color,
      backgroundColor: AppColors.kGray200,

    );
  }
}
