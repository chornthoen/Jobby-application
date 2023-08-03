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
List<StatusModel> statusModel = [
  StatusModel(
    title: 'Applied',
    description: '100',
    svgUrl: 'assets/svg/file-check.svg',
    color: AppColors.kGreen200Color,
  ),
  StatusModel(
    title: 'Reviewed',
    description: '140',
    svgUrl: 'assets/svg/message.svg',
    color: AppColors.kPurple200Color,
  ),
  StatusModel(
    title: 'Contacted',
    description: '50',
    svgUrl: 'assets/svg/user-check.svg',
    color: AppColors.kOrange200Color,
  ),
];
