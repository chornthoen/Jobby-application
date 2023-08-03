import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemEvent extends StatelessWidget {
  const ItemEvent({
    super.key,
    required this.image,
    required this.title,
    required this.date,
    required this.day,
    required this.month,
    required this.count,
    this.onPressed,
    this.isSaved = false,
    this.onSaved,
    required this.status,
  });
  final VoidCallback? onPressed;
  final String image;
  final String title;
  final String date;
  final String day;
  final String month;
  final String count;
  final bool isSaved;
  final VoidCallback? onSaved;
  final String status;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                AppColors.kBoxShadowColor,
                AppColors.kBoxShadowColor1,
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),

                        ),
                        image:  DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.kBlue400Color,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child:  Text(
                          status,
                          style: const TextStyle(
                            color: AppColors.kWhiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -1,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 5,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.kWhiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              day,
                              style: const TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              month,
                              style: const TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.calendar_blank,
                            color: AppColors.kQuinaryColor,
                            size: 22,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            date,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kQuinaryColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/users.svg',
                            height: 22,
                            width: 22,
                            color: AppColors.kQuinaryColor,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            count,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kQuinaryColor,
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
                          color: AppColors.kPrimaryColor,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
