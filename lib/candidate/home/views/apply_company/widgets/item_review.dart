import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/apply_company/widgets/star_5.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemReviews extends StatelessWidget {
  const ItemReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Text(
            'Ideal working environment',
            style: TextStyle(
              color: AppColors.kPrimaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Star5(),
              SizedBox(width: 10),
              Text(
                '2 days ago',
                style: TextStyle(
                  color: AppColors.kQuaternaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Tmrw studio owns, manages and operates a system of Trade Centers'
                ' - A shopping, entertainment and culinary paradise with'
                ' 4 brand lines.',
            style: TextStyle(
              color: AppColors.kQuaternaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: AppColors.kGray200,
          ),
        ],
      ),
    );
  }
}
