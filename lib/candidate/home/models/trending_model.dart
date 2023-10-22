import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TrendingModel {
  TrendingModel({
    required this.id,
    required this.title,
    required this.svgPath,
    required this.description,
    this.color,
  });

  int id;
  String title;
  String svgPath;
  String description;
  Color? color;
}

List<TrendingModel> listTrending = [
  TrendingModel(
    id: 1,
    title: 'Finance',
    svgPath: 'assets/svg/chart.svg',
    description: '487 jobs',
    color: AppColors.kOrangeColor200,
  ),
  TrendingModel(
    id: 2,
    title: 'Marketing',
    svgPath: 'assets/svg/viewfinder.svg',
    description: '500 jobs',
    color: AppColors.kColorRed200,
  ),
  TrendingModel(
    id: 3,
    title: 'Travel',
    svgPath: 'assets/svg/compass.svg',
    description: '222 jobs',
    color: AppColors.kColorBlue200,
  ),
  TrendingModel(
    id: 4,
    title: 'Art',
    svgPath: 'assets/svg/art.svg',
    description: '300 jobs',
    color: AppColors.kGreenColor200,
  ),
  TrendingModel(
    id: 5,
    title: 'IT',
    svgPath: 'assets/svg/dev.svg',
    description: '340 jobs',
    color: AppColors.kPurpleColor200,
  ),
  TrendingModel(
    id: 6,
    title: 'Banking',
    svgPath: 'assets/svg/bank.svg',
    description: '100 jobs',
    color: AppColors.kOrangeColor200,
  ),
  TrendingModel(
    id: 7,
    title: 'Architecture',
    svgPath: 'assets/svg/building-2.svg',
    description: '100 jobs',
    color: AppColors.kColorRed200,
  ),
  TrendingModel(
    id: 8,
    title: 'Multimedia',
    svgPath: 'assets/svg/wand.svg',
    description: '422 jobs',
    color: AppColors.kPurpleColor200,
  ),
];
