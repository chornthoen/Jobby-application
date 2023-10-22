import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemInterested extends StatelessWidget {
  const ItemInterested({
    required this.image,
    required this.nameCompany,
    required this.location,
    super.key,
    this.onTab,
    this.isFollow,
    this.follow = false,
  });

  final String image;
  final String nameCompany;
  final String location;
  final VoidCallback? onTab;
  final VoidCallback? isFollow;
  final bool follow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: AppColors.kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              width: 32,
              height: 32,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameCompany,
                style: const TextStyle(
                  color: AppColors.kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                location,
                style: const TextStyle(
                  color: AppColors.kColorGray600,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Spacer(),
          TextButton.icon(
            onPressed: isFollow,
            icon: Icon(
              follow
                  ? PhosphorIcons.check_circle_fill
                  : PhosphorIcons.plus_circle_fill,
              color:
                  follow ? AppColors.kOrangeColor400 : AppColors.kPrimaryColor,
              size: 20,
            ),
            label: Text(
              follow ? 'Following' : 'Follow',
              style: TextStyle(
                color: follow
                    ? AppColors.kOrangeColor400
                    : AppColors.kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
