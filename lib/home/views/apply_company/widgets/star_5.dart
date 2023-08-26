import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class Star5 extends StatelessWidget {
  const Star5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          PhosphorIcons.star_fill,
          color: AppColors.kOrange400Color,
          size: 20,
        ),
        Icon(
          PhosphorIcons.star_fill,
          color: AppColors.kOrange400Color,
          size: 20,
        ),
        Icon(
          PhosphorIcons.star_fill,
          color: AppColors.kOrange400Color,
          size: 20,
        ),
        Icon(
          PhosphorIcons.star_fill,
          color: AppColors.kOrange400Color,
          size: 20,
        ),
        Icon(
          PhosphorIcons.star_fill,
          color: AppColors.kOrange400Color,
          size: 20,
        ),



      ],
    );
  }
}
