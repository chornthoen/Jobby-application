import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
class StatusModel{

  StatusModel({
    required this.title,
    required this.description,
    required this.svgUrl,
    required this.color,
  });
  String title;
  String description;
  String svgUrl;
  Color color;

}

//list 4
List<StatusModel> statusList = [
  StatusModel(
    title: 'Location',
    description: 'Phnom Penh',
    svgUrl: 'assets/svg/location.svg',
    color: AppColors.kGreenColor200,
  ),
  StatusModel(
    title: 'Job Type',
    description: 'Full Time',
    svgUrl: 'assets/svg/jobs.svg',
    color: AppColors.kPurpleColor200,
  ),
  StatusModel(
    title: 'Salary',
    description: '2k/month',
    svgUrl: 'assets/svg/money.svg',
    color: AppColors.kOrangeColor200,
  ),
  StatusModel(
    title: 'Posted',
    description: '2 days ago',
    svgUrl: 'assets/svg/time.svg',
    color: AppColors.kColorBlue200,
  ),
];
