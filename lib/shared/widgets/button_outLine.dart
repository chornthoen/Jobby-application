import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class ButtonOutLineAction extends StatelessWidget {
  const ButtonOutLineAction({
    required this.text,
    required this.onPressed,
    super.key,
    this.width = double.infinity,
    this.height = 54,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.kPrimaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.sm),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: CustomTextStyles.buttonMediumBlack),
            SizedBox(width: icon != null ? 5 : 0),
            if (icon != null)
              Icon(
                icon,
                color: AppColors.kPrimaryColor,
                size: AppSpacing.xlg,
              ),
          ],
        ),
      ),
    );
  }
}
