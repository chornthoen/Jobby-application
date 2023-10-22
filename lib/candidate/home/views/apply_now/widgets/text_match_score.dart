import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/apply_now/widgets/points_line.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MatchScore extends StatelessWidget {
  const MatchScore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CircularPercentIndicator(
            radius: 50,
            lineWidth: 10,
            percent: 0.7,
            animation: true,
            animationDuration: 2000,
            progressColor: AppColors.kGreenColor400,
            backgroundColor: AppColors.kColorGray200,
            center: const Text(
              '70%',
              style: TextStyle(
                color: AppColors.kGreenColor400,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            circularStrokeCap: CircularStrokeCap.round,
          ),
        ),
        const SizedBox(width: 5),
        const Expanded(
          child: Column(
            children: [
              TextMatchScore(
                label: 'Skill',
                value: '70%',
              ),
              PointsLine(
                percent: 0.7,
                color: AppColors.kPurpleColor400,
              ),
              TextMatchScore(
                label: 'Exp',
                value: '60%',
              ),
              PointsLine(
                percent: 0.6,
                color: AppColors.kOrangeColor400,
              ),
              TextMatchScore(
                label: 'Orientation',
                value: '90%',
              ),
              PointsLine(
                percent: 0.9,
                color: AppColors.kColorBlue400,
              ),
              TextMatchScore(
                label: 'Education',
                value: '50%',
              ),
              PointsLine(
                percent: 0.5,
                color: AppColors.kColorRed400,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextMatchScore extends StatelessWidget {
  const TextMatchScore({
    required this.label, required this.value, super.key,
  });
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          Text(
            value,
            style: const TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
