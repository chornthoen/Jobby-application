import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TextLabelAndButton extends StatelessWidget {
  const TextLabelAndButton({
    super.key,
    required this.text,
    this.icon,
    this.onTap,
    this.size = 20,
    this.onTap1,
    this.icon1,
  });

  final String text;
  final IconData? icon;
  final IconData? icon1;
  final VoidCallback? onTap;
  final VoidCallback? onTap1;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: size,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Icon(
                icon,
                color: AppColors.kPrimaryColor,
                size: 24,
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: onTap1,
              child: Icon(
                icon1,
                color: AppColors.kPrimaryColor,
                size: 24,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
