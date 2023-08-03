import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
class StatusModel{
  String title;
  String description;
  String svgUrl;
  Color color;

  StatusModel({
    required this.title,
    required this.description,
    required this.svgUrl,
    required this.color,
  });

}

//list 4
List<StatusModel> statusList = [
  StatusModel(
    title: 'Location',
    description: 'Phnom Penh',
    svgUrl: 'assets/svg/location.svg',
    color: AppColors.kGreen200Color,
  ),
  StatusModel(
    title: 'Job Type',
    description: 'Full Time',
    svgUrl: 'assets/svg/jobs.svg',
    color: AppColors.kPurple200Color,
  ),
  StatusModel(
    title: 'Salary',
    description: '2k/month',
    svgUrl: 'assets/svg/money.svg',
    color: AppColors.kOrange200Color,
  ),
  StatusModel(
    title: 'Posted',
    description: '2 days ago',
    svgUrl: 'assets/svg/time.svg',
    color: AppColors.kBlue200Color,
  ),
];
