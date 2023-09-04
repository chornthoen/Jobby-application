
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class HotJobModel{

  HotJobModel({
    required this.id,
    required this.title,
    required this.name,
    required this.salary,
    required this.role,
    required this.time,
    required this.image, required this.date, required this.isSaved, this.color,
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
List<HotJobModel> hotJobModel = [
  HotJobModel(
    id: 1,
    title: 'Product designer⚡️',
    name: 'Ho Chi Minh',
    salary: '2k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kPurple200Color,
    image: 'assets/images/technology.png',
    date: '2h ago',
    isSaved: true,

  ),
  HotJobModel(
    id: 2,
    title: 'Content writer🔥',
    name: 'Ha Noi',
    salary: '3k/month',
    role: 'Senior designer',
    time: 'Full Time',
    color: AppColors.kGreen200Color,
    image: 'assets/images/pen.png',
    date: '3h ago',
    isSaved: false,
  ),
  HotJobModel(
    id: 3,
    title: 'UX Designer 🌟',
    name: 'Heng Sopheak',
    salary: '1k/month',
    role: 'Junior designer',
    time: 'Full Time',
    color: AppColors.kRed200Color,
    image: 'assets/images/web.png',
    date: '2d ago',
    isSaved: false,
  ),
  HotJobModel(
    id: 4,
    title: 'Business analyst ⚡️',
    name: 'Sok Sopheak',
    salary: '0.6k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrange200Color,
    image: 'assets/images/book.png',
    date: '1d ago',
    isSaved: true,
  ),
  HotJobModel(
    id: 5,
    title: 'Senior developer 🔥',
    name: 'Dara',
    salary: '10k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kBlue200Color,
    image: 'assets/images/business.png',
    date: '3h ago',
    isSaved: false,
  ),
];
