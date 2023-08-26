
import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class AppliedModel{

  AppliedModel({
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
List<AppliedModel> appliedModel = [

  AppliedModel(
    id: 1,
    title: 'Business analyst ⚡️',
    name: 'Sok Sopheak',
    salary: '0.6k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrange200Color,
    image: 'assets/images/book.png',
    date: '1d ago',
    isSaved: false,
  ),
  AppliedModel(
    id: 2,
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

  AppliedModel(
    id: 3,
    title: 'Product designer⚡️',
    name: 'Ho Chi Minh',
    salary: '2k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrange200Color,
    image: 'assets/images/lightbulb.png',
    date: '2h ago',
    isSaved: false,
  ),
  AppliedModel(
    id: 4,
    title: 'Content writer🔥',
    name: 'Ha Noi',
    salary: '3k/month',
    role: 'Senior designer',
    time: 'Full Time',
    color: AppColors.kGreen200Color,
    image: 'assets/images/calendar.png',
    date: '3h ago',
    isSaved: false,
  ),
  AppliedModel(
    id: 5,
    title: 'UX Designer 🌟',
    name: 'Heng Sopheak',
    salary: '1k/month',
    role: 'Junior designer',
    time: 'Full Time',
    color: AppColors.kRed200Color,
    image: 'assets/images/baggage.png',
    date: '2d ago',
    isSaved: false,
  ),
  AppliedModel(
    id: 6,
    title: 'Business analyst ⚡️',
    name: 'Sok Sopheak',
    salary: '0.6k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kOrange200Color,
    image: 'assets/images/balloon.png',
    date: '1d ago',
    isSaved: false,
  ),
  AppliedModel(
    id: 7,
    title: 'Senior developer 🔥',
    name: 'Dara',
    salary: '10k/month',
    role: 'Senior developer',
    time: 'Full Time',
    color: AppColors.kBlue200Color,
    image: 'assets/images/battery.png',
    date: '3h ago',
    isSaved: true,
  ),

];
