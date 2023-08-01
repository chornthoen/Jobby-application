import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/colors/app_color.dart';


class ItemTrending extends StatelessWidget {
  const ItemTrending({
    super.key,
    required this.svgPath,
    required this.title,
    required this.description,
    this.color,
    this.sizeBox = 12,
    this.colorBackground,
  });
  final String svgPath;
  final String title;
  final String description;
  final Color? color;
  final double? sizeBox;
  final Color? colorBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.3,
      margin:  EdgeInsets.only(right: sizeBox ?? 12),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
              color: colorBackground,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgPath,
              height: 16,
              width: 16,
              color: AppColors.kPrimaryColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              color: AppColors.kQuaternaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}


