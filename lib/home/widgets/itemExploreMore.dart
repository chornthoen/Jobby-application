import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemExploreMore extends StatelessWidget {
  const ItemExploreMore({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.onPressed,
  });
  final String image;
  final String title;
  final String description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.36,
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [AppColors.kBoxShadowColor,
          AppColors.kBoxShadowColor1
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image(
              image: AssetImage(image),
              height: 150,
              width: 150,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.kBlackColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style:const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.kQuaternaryColor,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 150,
            child: TextButton(
              onPressed: onPressed,
              child: Row(
                children: const [
                  Text(
                    'Explore Now',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    PhosphorIcons.arrow_right_bold,
                    color: AppColors.kPrimaryColor,
                    size: 22,
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
