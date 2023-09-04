import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemBlog extends StatelessWidget {
  const ItemBlog({
    required this.image,
    required this.title,
    required this.read,
    required this.date,
    super.key,
    this.onPressed,
    this.onBookmark,
    this.isBookmark = false,
  });

  final VoidCallback? onPressed;
  final String image;
  final String title;
  final int read;
  final String date;
  final bool isBookmark;
  final VoidCallback? onBookmark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                AppColors.kBoxShadowColor,
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
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
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kQuinaryColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            PhosphorIcons.clock,
                            color: AppColors.kQuinaryColor,
                            size: 22,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '$read min read',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kQuinaryColor,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onBookmark,
                        child: Icon(
                          isBookmark
                              ? PhosphorIcons.bookmark_simple_fill
                              : PhosphorIcons.bookmark_simple,
                          color: AppColors.kPrimaryColor,
                          size: 23,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
