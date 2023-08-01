import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class WidgetSeeAll extends StatelessWidget {
  const WidgetSeeAll({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'See All',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.kQuaternaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
