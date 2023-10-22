import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabPostDetail extends StatelessWidget {
  const TabPostDetail({
    required this.title,
    required this.index,
    required this.tabController,
    super.key,
    this.number,
  });

  final String? number;
  final String title;
  final int index;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const SizedBox(width: 5),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: tabController == index
                ? AppColors.kPrimaryColor
                : AppColors.kColorGray300,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              number ?? '',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: tabController == index
                    ? AppColors.kWhiteColor
                    : AppColors.kPrimaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
