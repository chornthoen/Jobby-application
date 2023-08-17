import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ButtonOutLineAction extends StatelessWidget {
  const ButtonOutLineAction({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 55,
    this.icon,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: icon != null ? 5 : 0),
            Icon(
              icon,
              color: AppColors.kPrimaryColor,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
