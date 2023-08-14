import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabCustom extends StatelessWidget {
  const TabCustom({
    super.key,
    required this.title,
    this.number,
  });

  final String title;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.kPrimaryColor),
      ),
      child: Align(
        child: Row(
          children: [
            Text(title),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: number == ''
                    ? Colors.transparent
                    : AppColors.kSeptenaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number ?? '',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
