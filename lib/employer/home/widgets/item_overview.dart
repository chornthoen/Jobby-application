import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemOverview extends StatelessWidget {
  const ItemOverview({
    super.key,
    required this.title,
    required this.value,
    required this.percent,
    required this.isUp,
  });
  final String title;
  final String value;
  final String percent;
  final bool isUp;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.kSeptenaryColor,
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.kQuaternaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 22,
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    'This week ',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.kQuinaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' $percent ',
                    style: TextStyle(
                      fontSize: 17,
                      color: isUp ? AppColors.kGreenColor : AppColors.kRedColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    isUp ? PhosphorIcons.arrow_up : PhosphorIcons.arrow_down,
                    color: isUp ? AppColors.kGreenColor : AppColors.kRedColor,
                    size: 18,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
