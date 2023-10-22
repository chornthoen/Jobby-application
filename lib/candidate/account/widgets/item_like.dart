
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemLike extends StatelessWidget {
  const ItemLike({
    super.key,
    this.imagePath,
  });

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.kColorGray200,
        shape: BoxShape.circle,
      ),
      child: Image(
        image: AssetImage(imagePath!),
        width: 28,
        height: 28,
      ),
    );
  }
}
