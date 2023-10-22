import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class AvatarRank extends StatelessWidget {
  const AvatarRank({
    required this.image,
    required this.name,
    required this.diamond,
    required this.rank,
    super.key,
    this.color1,
    this.color2,
    this.number,
    this.colorName = AppColors.kWhiteColor,
  });

  final String image;
  final String name;
  final String diamond;
  final String rank;
  final Color? color1;
  final Color? color2;
  final String? number;
  final Color? colorName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 90,
          child: Stack(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.all(2),
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.kWhiteColor,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.kColorRed400,
                        AppColors.kColorBlue300,
                      ],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 46,
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  rank,
                  width: 22,
                  height: 22,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  number!,
                  width: 22,
                  height: 22,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: colorName,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/diamond-color.svg',
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 4),
            Text(
              diamond,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.kWhiteColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
