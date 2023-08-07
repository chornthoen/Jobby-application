

import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class SlideProfile {
  String image;
  String title;
  String subtitle;
  Color color;

  SlideProfile({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
  });
}

List<SlideProfile> sliderProfile = [
  SlideProfile(
    image: 'assets/images/business.png',
    title: 'Update work experience',
    subtitle: 'Update your work experience to impress employers',
    color: AppColors.kBlue200Color,
  ),
  SlideProfile(
    image: 'assets/images/balloon.png',
    title: 'This is your profile page',
    subtitle: 'Mobile Developer and 3 more',
    color: AppColors.kRed200Color,
  ),
  SlideProfile(
    image: 'assets/images/battery.png',
    title: 'How to get more interview',
    subtitle: 'Mobile Developer and 3 more',
    color: AppColors.kPurple200Color,
  ),
  SlideProfile(
    image: 'assets/images/sport.png',
    title: 'What is your dream job?',
    subtitle: 'Mobile Developer',
    color: AppColors.kOrange200Color,
  ),
];
