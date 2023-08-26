import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';


class NotificationModel{

  NotificationModel({
    required this.title,
    required this.time,
    required this.image,
    this.color,
    this.isRead,
  });
  String title;
  String time;
  String image;
  Color? color;
  bool? isRead;

}

//list of notification model 10 items
List<NotificationModel> notificationList = [
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/balloon.png',
    color: AppColors.kPurple200Color,
    isRead: true,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/business.png',
    color: AppColors.kOrange200Color,
    isRead: true,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/battery.png',
    color: AppColors.kBlue200Color,
    isRead: true,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/lightbulb.png',
    color: AppColors.kGreen200Color,
    isRead: true,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/pen.png',
    color: AppColors.kPurple200Color,
    isRead: false,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/technology.png',
    color: AppColors.kOrange200Color,
    isRead: false,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/baggage.png',
    color: AppColors.kBlue200Color,
    isRead: false,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/book.png',
    color: AppColors.kGreen200Color,
    isRead: false,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/analytics.png',
    color: AppColors.kPurple200Color,
    isRead: false,
  ),
  NotificationModel(
    title: 'Your application has been received',
    time: '2 hours ago',
    image: 'assets/images/business.png',
    color: AppColors.kOrange200Color,
    isRead: false,

  ),
];
