
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
class CategoryModel {
  const CategoryModel({
    required this.title,
    required this.svgPath,
    required this.color,
  });
  final String title;
  final String svgPath;
  final Color color;
}

final List<CategoryModel> listCategory = [
  const CategoryModel(
    title: 'Manager Post',
    svgPath: 'assets/svg/list.svg',
    color: AppColors.kOrange200Color,
  ),
  const CategoryModel(
    title: 'Manager Candidate',
    svgPath: 'assets/svg/users.svg',
    color: AppColors.kGreen200Color,
  ),
  const CategoryModel(
    title: 'Service Package',
    svgPath: 'assets/svg/app.svg',
    color: AppColors.kPurple200Color,
  ),
  const CategoryModel(
    title: 'Loyalty',
    svgPath: 'assets/svg/star-outline.svg',
    color: AppColors.kRed200Color,
  ),
  const CategoryModel(
    title: 'Gift',
    svgPath: 'assets/svg/gift.svg',
    color: AppColors.kBlue200Color,
  ),
];