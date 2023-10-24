import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class WidgetSeeAll extends StatelessWidget {
  const WidgetSeeAll({
    required this.title, required this.onPressed, super.key,
    this.color = AppColors.kPrimaryColor,
  });
  final String title;
  final Color? color;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 10,
        top: 10,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: CustomTextStyles.headlineSmallBold,
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child:  Text(
              'See All',
              style: CustomTextStyles.buttonMediumBlack,
            ),
          ),
        ],
      ),
    );
  }
}
