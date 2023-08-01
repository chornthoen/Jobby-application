import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ActionCall extends StatelessWidget {
  const ActionCall({
    super.key,
    this.icon,
    this.onPressed,
    this.color = AppColors.kWhiteColor,
    this.isSubmit = false,
  });
  final IconData? icon;
  final VoidCallback? onPressed;
  final Color? color;
  final bool isSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon:  Icon(
          icon,
          color: AppColors.kWhiteColor,
          size: 28,
        ),
      ),
    );
  }
}
