import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemCommentInEvent extends StatelessWidget {
  const ItemCommentInEvent({
    required this.image,
    required this.name,
    required this.date,
    required this.comment,
    required this.like,
    required this.share,
    required this.isLiked,
    super.key,
    this.onLikeTap,
  });

  final String image;
  final String name;
  final String date;
  final String comment;
  final int like;
  final int share;
  final bool isLiked;
  final VoidCallback? onLikeTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: AppColors.kWhiteColor,
                backgroundImage: AssetImage(
                  image,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: AppColors.kColorGray500,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            comment,
            style: const TextStyle(
              color: AppColors.kColorGray600,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            children: [
              TextButton.icon(
                onPressed: onLikeTap,
                icon: Icon(
                  isLiked
                      ? PhosphorIcons.thumbs_up_fill
                      : PhosphorIcons.thumbs_up,
                  color: isLiked
                      ? AppColors.kPrimaryColor
                      : AppColors.kColorGray500,
                  size: 24,
                ),
                label: Text(
                  '$like',
                  style: const TextStyle(
                    color: AppColors.kColorGray500,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  PhosphorIcons.share,
                  color: AppColors.kColorGray500,
                  size: 24,
                ),
                label: Text(
                  '$share',
                  style: const TextStyle(
                    color: AppColors.kColorGray500,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.kColorGray200,
          ),
        ],
      ),
    );
  }
}
