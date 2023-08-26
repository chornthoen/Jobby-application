import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';

class ItemSocials extends StatelessWidget {
  const ItemSocials({
    required this.image, super.key,
    this.onPressed,
  });
  final String image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.26,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.kGray200,
          ),
          elevation: 0,
          backgroundColor: AppColors.kWhiteColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Image(
          image: AssetImage(image),
          height: 40,
          width: 40,
        ),
      ),
    );
  }
}
