import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemGift extends StatelessWidget {
  const ItemGift({
    required this.title,
    required this.description,
    required this.date,
    required this.status,
    super.key,
  });

  final String title;
  final String description;
  final String date;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.kSeptenaryColor),
            boxShadow: [AppColors.kBoxShadowColor, AppColors.kBoxShadowColor1],
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.kRedColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kQuaternaryColor,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/svg/diamond-color.svg',
                      height: 55,
                      width: 55,
                    ),
                  ],
                ),
              ),
              const DottedLine(
                dashColor: AppColors.kSeptenaryColor,
                dashGapLength: 8,
                dashLength: 8,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: AppColors.kSeptenaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      date,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kQuaternaryColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      status,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
