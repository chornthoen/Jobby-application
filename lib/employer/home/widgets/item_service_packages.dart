import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemServicePackage extends StatelessWidget {
  const ItemServicePackage({
    required this.title,
    required this.diamond,
    required this.price,
    required this.index,
    super.key,
  });

  final int index;
  final String title;
  final String diamond;
  final String price;

  // linear gradient colo
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              color: AppColors.kWhiteColor,
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: index == 0
                    ? [AppColors.kColorRed200, AppColors.kRedColor]
                    : index == 1
                        ? [AppColors.kOrangeColor200, AppColors.kOrangeColor]
                        : index == 2
                            ? [AppColors.kGreenColor200, AppColors.kGreenColor]
                            : index == 3
                                ? [
                                    AppColors.kColorBlue200,
                                    AppColors.kColorBlue500,
                                  ]
                                : [
                                    AppColors.kPurpleColor200,
                                    AppColors.kPurpleColor,
                                  ],
              ),
            ),
          ),
          const Image(
            image: AssetImage('assets/images/union.png'),
            width: 220,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          diamond,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kColorGray700,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.kWhiteColor.withOpacity(0.5),
                            border: Border.all(
                              color: AppColors.kOrangeColor200,
                            ),
                          ),
                          child: SvgPicture.asset(
                            'assets/svg/diamond-color.svg',
                            width: 16,
                            height: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
