import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class StarRate extends StatelessWidget {
  const StarRate({
    super.key,
    required this.leading,
    required this.trailing,
    required this.percent,

  });
  final String leading;
  final String trailing;
  final double percent;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: LinearPercentIndicator(
        lineHeight: 8,
        percent: percent,
        animation: true,
        animationDuration: 2000,
        backgroundColor: AppColors.kGray200,
        progressColor: AppColors.kOrange400Color,
        leading: Text(
          leading,
          style: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),

        ),
        trailing: Text(
          trailing,
          style: const TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),

        ),
      ),
    );
  }
}
