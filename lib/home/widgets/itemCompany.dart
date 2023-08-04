
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemCompanyForYou extends StatelessWidget {
  const ItemCompanyForYou({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.sizeBox = 12,
    this.onPressed,
  });
  final String image;
  final String title;
  final String description;
  final double? sizeBox;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.1,
        margin:  EdgeInsets.only(right: sizeBox ?? 12, bottom: 12),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  padding: const EdgeInsets.all(10),
                  decoration:  const BoxDecoration(
                    color: AppColors.kBlackColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage(image),
                    height: 16,
                    width: 16,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                      color: AppColors.kWhiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/svg/verified.svg',
                      height: 16,
                      width: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(
                color: AppColors.kQuaternaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
