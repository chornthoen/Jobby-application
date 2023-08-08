
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CardModel {
  final String title;
  final String image;
  final Color color;

  CardModel({
    required this.title,
    required this.image,
    required this.color,
  });
}

final cardModel = [
  CardModel(
    title: 'Passport',
    image: 'assets/images/wallet.png',
    color: AppColors.kOrange200Color,
  ),
  CardModel(
    title: 'Driver’s license',
    image: 'assets/images/folders.png',
    color: AppColors.kBlue200Color,
  ),
  CardModel(
    title: 'Identity card',
    image: 'assets/images/flag.png',
    color: AppColors.kRed200Color,
  ),
];
