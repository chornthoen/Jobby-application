
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemCandidateDetail extends StatelessWidget {
  const ItemCandidateDetail({
    super.key,
    required this.name,
    required this.image,
    required this.date,
  });
  final String name;
  final String image;
  final String date;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.kSeptenaryColor),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      for (int i = 0; i < 5; i++)
                        SvgPicture.asset(
                          'assets/svg/star-outline.svg',
                          width: 22,
                          height: 22,
                          color: AppColors.kQuinaryColor,
                        ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                'Applied: ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
