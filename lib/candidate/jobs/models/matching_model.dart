import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class MatchingModel {
  MatchingModel({
    required this.id,
    required this.title,
    required this.name,
    required this.salary,
    required this.role,
    required this.time,
    required this.image,
    required this.date,
    required this.isSaved,
    this.color,
  });

  int id;
  String title;
  String name;
  String salary;
  String role;
  String time;
  Color? color;
  String image;
  String date;
  bool isSaved;
}

//list hot job 5 item
List<MatchingModel> matchingModel = [
  MatchingModel(
    id: 1,
    title: 'Product designer⚡️',
    name: 'Ho Chi Minh',
    salary: '2k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kPurpleColor200,
    image: 'assets/images/technology.png',
    date: '2h ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 2,
    title: 'Content writer🔥',
    name: 'Ha Noi',
    salary: '3k/month',
    role: 'Senior designer',
    time: 'Full Time',
    color: AppColors.kGreenColor200,
    image: 'assets/images/pen.png',
    date: '3h ago',
    isSaved: true,
  ),
  MatchingModel(
    id: 3,
    title: 'UX Designer 🌟',
    name: 'Heng Sopheak',
    salary: '1k/month',
    role: 'Junior designer',
    time: 'Full Time',
    color: AppColors.kColorRed200,
    image: 'assets/images/web.png',
    date: '2d ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 4,
    title: 'Business analyst ⚡️',
    name: 'Sok Sopheak',
    salary: '0.6k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrangeColor200,
    image: 'assets/images/book.png',
    date: '1d ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 5,
    title: 'Senior developer 🔥',
    name: 'Dara',
    salary: '10k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kColorBlue200,
    image: 'assets/images/business.png',
    date: '3h ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 6,
    title: 'Product designer⚡️',
    name: 'Ho Chi Minh',
    salary: '2k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrangeColor200,
    image: 'assets/images/lightbulb.png',
    date: '2h ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 7,
    title: 'Content writer🔥',
    name: 'Ha Noi',
    salary: '3k/month',
    role: 'Senior designer',
    time: 'Full Time',
    color: AppColors.kGreenColor200,
    image: 'assets/images/calendar.png',
    date: '3h ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 8,
    title: 'UX Designer 🌟',
    name: 'Heng Sopheak',
    salary: '1k/month',
    role: 'Junior designer',
    time: 'Full Time',
    color: AppColors.kColorRed200,
    image: 'assets/images/baggage.png',
    date: '2d ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 4,
    title: 'Business analyst ⚡️',
    name: 'Sok Sopheak',
    salary: '0.6k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrangeColor200,
    image: 'assets/images/balloon.png',
    date: '1d ago',
    isSaved: false,
  ),
  MatchingModel(
    id: 5,
    title: 'Senior developer 🔥',
    name: 'Dara',
    salary: '10k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kColorBlue200,
    image: 'assets/images/battery.png',
    date: '3h ago',
    isSaved: true,
  ),
];
