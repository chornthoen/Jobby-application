import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ActionSkills extends StatelessWidget {
  const ActionSkills({
    required this.text, super.key,
    this.onTap,
  });
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: AppColors.kGray100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: AppColors.kQuaternaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              PhosphorIcons.x,
              color: AppColors.kQuaternaryColor,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
