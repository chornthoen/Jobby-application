import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class WidgetSeeAll extends StatelessWidget {
  const WidgetSeeAll({
    super.key,
    required this.title,
    this.color = AppColors.kPrimaryColor,
    required this.onPressed,
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
            style:  TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            child:  Text(
              'See All',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
