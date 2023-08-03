import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ButtonOutLineAction extends StatelessWidget {
  const ButtonOutLineAction({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: AppColors.kPrimaryColor,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
