import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemMyPrivilege extends StatelessWidget {
  const ItemMyPrivilege({
    required this.title,
    required this.svgUrl,
    required this.description,
    super.key,
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
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kColorGray800,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kOrangeColor400,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
