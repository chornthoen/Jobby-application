import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    required this.svgPath,
    required this.title,
    required this.description,
    super.key,
    this.color,
    this.isStar = false,
  });

  final String svgPath;
  final String title;
  final String description;
  final Color? color;
  final bool? isStar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgPath,
              width: 22,
              height: 22,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.kColorGray600,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                description,
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 5),
              if (isStar!)
                const Icon(
                  PhosphorIcons.star_fill,
                  size: 18,
                  color: AppColors.kOrangeColor400,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
