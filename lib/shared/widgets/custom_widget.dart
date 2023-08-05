import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.image,
    required this.title,
    this.description,
    this.onTap,
    this.color = AppColors.kOrange200Color,
  });
  final String image;
  final String title;
  final String? description;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 14,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 14,
      ),
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
            width: 40,
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kPrimaryColor,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                description!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 8,
              ),
              decoration: const BoxDecoration(
                color: AppColors.kWhiteColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                PhosphorIcons.arrow_right,
                color: AppColors.kPrimaryColor,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
