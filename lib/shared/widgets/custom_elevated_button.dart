
import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.text, required this.isClick, super.key,
    this.onPressed,
    this.child,
    this.width = double.infinity,
    this.icon,
  });
  final String text;
  final VoidCallback? onPressed;
  final Widget? child;
  final bool isClick;
  final double? width;
  final IconData? icon;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
     // padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isClick ? AppColors.kPrimaryColor :
          AppColors.kColorGray300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
          shadowColor: BoxShadow(
            color: AppColors.kBlackColor.withOpacity(0.8),
            blurRadius: AppSpacing.sm,
            offset: const Offset(0, 9),
          ).color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: CustomTextStyles.buttonMediumWhite,
                ),

              ],
            ),
            const SizedBox(width: AppSpacing.sm),
            Center(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
