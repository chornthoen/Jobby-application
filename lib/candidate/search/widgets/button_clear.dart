import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ButtonClear extends StatelessWidget {
  const ButtonClear({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Recently Searched',
          style: TextStyle(
            color: AppColors.kColorGray500,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: const Text(
            'Clear All',
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
