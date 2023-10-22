import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/snack_bar_top.dart';

class ItemFavorite extends StatelessWidget {
  const ItemFavorite({
    required this.title,
    required this.name,
    required this.image,
    required this.salary,
    required this.time,
    required this.role,
    required this.date,
    super.key,
    this.color,
    this.onSaved,
    this.onApply,
    this.sizeBox = 14,
    this.isSaved = false,
  });

  final String title;
  final String name;
  final String image;
  final String salary;
  final String time;
  final String role;
  final String date;
  final Color? color;
  final VoidCallback? onSaved;
  final VoidCallback? onApply;
  final double? sizeBox;
  final bool isSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: sizeBox ?? 14,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image(
                  image: AssetImage(image),
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: AppColors.kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '$name • $salary',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.kColorGray600,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      onSaved!();
                      if (isSaved == false) {
                        SnackBarTop.topSnackBarLottie(
                          context,
                          'Saved Successfully!',
                        );
                      } else {
                        SnackBarTop.topSnackBarLottie(
                          context,
                          'Unsaved Successfully!',
                        );
                      }
                    },
                    child: Icon(
                      isSaved == true
                          ? PhosphorIcons.bookmark_simple_fill
                          : PhosphorIcons.bookmark_simple,
                      color: isSaved == true
                          ? AppColors.kPrimaryColor
                          : AppColors.kColorGray500,
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.kColorGray500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColorGray100,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          time,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.kColorGray600,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kColorGray100,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Text(
                          role,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.kColorGray600,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: onApply,
                child: const Row(
                  children: [
                    Text(
                      'Apply',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 2),
                    Icon(
                      PhosphorIcons.arrow_right,
                      color: AppColors.kPrimaryColor,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
