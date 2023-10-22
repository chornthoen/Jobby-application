
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

import 'package:jobby_application/shared/models/on_boarding_model.dart';
class ActionsBorderLine extends StatelessWidget {
  const ActionsBorderLine({
    required this.currentIndex, super.key,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var i = 0; i < onBoardingModel.length; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            height: 2,
            width: 40,
            decoration: BoxDecoration(
              color: currentIndex == i
                  ? AppColors.kBlackColor
                  : AppColors.kColorGray300,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
      ],
    );
  }
}
