import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    super.key,
    required this.title,
    required this.svgPath,
    required this.onPressed,
    required this.color,
  });
  final String title;
  final String svgPath;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: color,
                  ),
                  child: SvgPicture.asset(
                    svgPath,
                    width: 32,
                    height: 32,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
