import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemPending extends StatelessWidget {
  const ItemPending({
    required this.title, required this.status, required this.onTap, super.key,
  });
  final String title;
  final String status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              AppColors.kBoxShadowColor,
              AppColors.kBoxShadowColor1,
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: onTap,
                    child: const Icon(
                      Icons.more_horiz,
                      color: AppColors.kPrimaryColor,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: status == 'Pending'
                      ? AppColors.kOrange400Color
                      : AppColors.kRed400Color,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  status,
                  style: const TextStyle(
                    color: AppColors.kWhiteColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
