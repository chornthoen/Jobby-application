
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class CardModel {

  CardModel({
    required this.title,
    required this.image,
    required this.color,
  });
  final String title;
  final String image;
  final Color color;
}

final cardModel = [
  CardModel(
    title: 'Passport',
    image: 'assets/images/wallet.png',
    color: AppColors.kOrangeColor200,
  ),
  CardModel(
    title: 'Driver’s license',
    image: 'assets/images/folders.png',
    color: AppColors.kColorBlue200,
  ),
  CardModel(
    title: 'Identity card',
    image: 'assets/images/flag.png',
    color: AppColors.kColorRed200,
  ),
];
