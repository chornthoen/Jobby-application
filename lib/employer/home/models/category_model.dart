
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.title,
    required this.svgPath,
    required this.color,
  });
  final int id;
  final String title;
  final String svgPath;
  final Color color;
}

final List<CategoryModel> listCategory = [
  const CategoryModel(
    id: 1,
    title: 'Manager Post',
    svgPath: 'assets/svg/list.svg',
    color: AppColors.kOrangeColor200,
  ),
  const CategoryModel(
    id: 2,
    title: 'Manager Candidate',
    svgPath: 'assets/svg/users.svg',
    color: AppColors.kGreenColor200,
  ),
  const CategoryModel(
    id: 3,
    title: 'Service Package',
    svgPath: 'assets/svg/app.svg',
    color: AppColors.kPurpleColor200,
  ),
  const CategoryModel(
    id: 4,
    title: 'Loyalty',
    svgPath: 'assets/svg/star-outline.svg',
    color: AppColors.kColorRed200,
  ),
  const CategoryModel(
    id: 5,
    title: 'Gift',
    svgPath: 'assets/svg/gift.svg',
    color: AppColors.kColorBlue200,
  ),
];
