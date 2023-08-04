import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.svgPath,
    required this.title,
    required this.description,
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
    return Container(
      width: MediaQuery.of(context).size.width * 0.27,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgPath,
              width: 25,
              height: 25,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.kQuaternaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                description,
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 5),
              if (isStar!)
                Icon(
                  PhosphorIcons.star_fill,
                  size: 18,
                  color: AppColors.kOrange400Color,
                )
            ],
          ),
        ],
      ),
    );
  }
}
