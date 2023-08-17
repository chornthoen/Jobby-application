
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemMyPrivilege extends StatelessWidget {
  const ItemMyPrivilege({
    super.key,
    required this.title,
    required this.svgUrl,
    required this.description,
  });

  final String title;
  final String svgUrl;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          svgUrl,
          width: 45,
          height: 45,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.kSecondaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.kOrange400Color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
