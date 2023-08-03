import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemHotJobs extends StatelessWidget {
  const ItemHotJobs({
    super.key,
    required this.title,
    required this.name,
    required this.image,
    required this.salary,
    required this.time,
    required this.role,
    required this.date,
    this.color,
    this.onSaved,
    this.onApply,
    this.sizeBox = 14,
    this.isSaved = false,
    this.sizeBox1 = 1,
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
  final double? sizeBox1;
  final bool isSaved;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: sizeBox1 ?? 1,
        bottom: sizeBox ?? 14,
      ),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [AppColors.kBoxShadowColor,
          AppColors.kBoxShadowColor1
        ],
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
                    '${name} • ${salary}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.kQuaternaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  GestureDetector(
                    onTap: onSaved,
                    child:  Icon(
                      isSaved == true
                          ? PhosphorIcons.bookmark_simple_fill
                          : PhosphorIcons.bookmark_simple,
                      color: isSaved == true
                          ? AppColors.kPrimaryColor
                          : AppColors.kQuinaryColor,
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.kQuinaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kGray100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  time,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.kQuaternaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.kGray100,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  role,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.kQuaternaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: onApply,
                child: Row(
                  children: const [
                    Text(
                      'Apply',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      PhosphorIcons.arrow_right,
                      color: AppColors.kPrimaryColor,
                      size: 22,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
