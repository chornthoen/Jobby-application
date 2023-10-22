import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemEbook extends StatelessWidget {
  const ItemEbook({
    required this.image,
    required this.title,
    required this.date,
    required this.name,
    super.key,
    this.onPressed,
    this.isSaved = false,
    this.onSaved,
  });

  final VoidCallback? onPressed;
  final String image;
  final String title;
  final String date;
  final String name;
  final bool isSaved;
  final VoidCallback? onSaved;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            AppColors.kBoxShadowColor,
            AppColors.kBoxShadowColor1,
          ],
        ),
        child: Row(
          children: [
            Image(
              image: AssetImage(image),
              height: 88,
              width: 88,
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/user.svg',
                        height: 24,
                        width: 23,
                        color: AppColors.kColorGray500,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kColorGray500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.calendar_blank,
                            size: 24,
                            color: AppColors.kColorGray500,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            date,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kColorGray500,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onSaved,
                        child: Icon(
                          isSaved
                              ? PhosphorIcons.bookmark_simple_fill
                              : PhosphorIcons.bookmark_simple,
                          size: 24,
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
