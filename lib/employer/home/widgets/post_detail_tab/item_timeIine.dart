import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class ItemTimeline extends StatelessWidget {
  const ItemTimeline({
    required this.timePause,
    required this.timeShow,
    required this.image,
    required this.name,
    super.key,
  });

  final String timePause;
  final String timeShow;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          AppColors.kBoxShadowColor1,
          AppColors.kBoxShadowColor,
        ],
      ),
      child: Column(
        children: [
          ActionTimeline(
            time: timePause,
            status: 'Job Paused',
            statusChange: 'Job Showing',
            image: image,
            name: name,
          ),
          const DottedLine(
            dashColor: AppColors.kColorGray500,
            dashGapLength: 5,
            dashLength: 5,
          ),
          ActionTimeline(
            time: timeShow,
            status: 'Job Paused',
            statusChange: 'Job Showing',
            image: image,
            name: name,
          ),
        ],
      ),
    );
  }
}

class ActionTimeline extends StatelessWidget {
  const ActionTimeline({
    required this.time,
    required this.status,
    required this.statusChange,
    required this.image,
    required this.name,
    super.key,
  });

  final String time;
  final String status;
  final String statusChange;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 5,
          ),
          child: Text(
            time,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.kWhiteColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Status changed - ',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kColorGray700,
                  ),
                  children: [
                    TextSpan(
                      text: status,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kColorGray700,
                      ),
                    ),
                    const TextSpan(
                      text: ' to ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kColorGray700,
                      ),
                    ),
                    TextSpan(
                      text: statusChange,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kColorGray700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'by',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.kColorGray600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      image,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kColorGray700,
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
