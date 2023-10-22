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
List<StatusModel> statusModel = [
  StatusModel(
    title: 'Applied',
    description: '100',
    svgUrl: 'assets/svg/file-check.svg',
    color: AppColors.kGreenColor200,
  ),
  StatusModel(
    title: 'Reviewed',
    description: '140',
    svgUrl: 'assets/svg/message.svg',
    color: AppColors.kPurpleColor200,
  ),
  StatusModel(
    title: 'Contacted',
    description: '50',
    svgUrl: 'assets/svg/user-check.svg',
    color: AppColors.kOrangeColor200,
  ),
];
