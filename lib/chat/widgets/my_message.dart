
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(width: 100),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 6),
            decoration: const BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(2),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(
                color: AppColors.kWhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),

      ],
    );
  }
}
