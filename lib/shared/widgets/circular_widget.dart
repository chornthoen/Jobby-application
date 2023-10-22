
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularWidget extends StatelessWidget {
  const CircularWidget({
    required this.currentIndex, required this.pageController, super.key,
  });

  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 36,
      lineWidth: 3,
      percent: currentIndex == 0
          ? 0.25
          : currentIndex == 1
          ? 0.5
          : currentIndex == 2
          ? 0.75
          : 1,
      progressColor: AppColors.kPrimaryColor,
      backgroundColor: AppColors.kColorGray300,
      circularStrokeCap: CircularStrokeCap.round,
      center: IconButton(
        onPressed: () {
          pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
        icon: const Icon(
          Icons.arrow_forward_outlined,
          color: AppColors.kPrimaryColor,
          size: 26,
        ),
      ),
    );
  }
}
