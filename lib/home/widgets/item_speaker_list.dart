
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobby_application/shared/colors/app_color.dart';


class ItemSpeakerList extends StatelessWidget {
  const ItemSpeakerList({
    required this.image, required this.name, required this.position, super.key,
  });
  final String image;
  final String name;
  final String position;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          AppColors.kBoxShadowColor,
          AppColors.kBoxShadowColor1,
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.kWhiteColor,
            backgroundImage:  AssetImage(
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
              const SizedBox(height: 5),
              Text(
                position,
                style: const TextStyle(
                  color: AppColors.kQuinaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemDetail extends StatelessWidget {
  const ItemDetail({
    required this.svg, required this.label, required this.value, super.key,
  });
  final String svg;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.16,
            child: Row(
              children: [
                SvgPicture.asset(
                  svg,
                  height: 22,
                  width: 22,
                  color: AppColors.kQuinaryColor,
                ),
                const SizedBox(width: 5),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kQuinaryColor,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors.kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
