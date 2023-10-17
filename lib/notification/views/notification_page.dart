import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/main/views/main_view.dart';
import 'package:jobby_application/notification/models/notification_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  static const String routePath = '/notification-page';

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        title: 'Notification',
        child: SvgPicture.asset(
          'assets/svg/check-double.svg',
          color: AppColors.kPrimaryColor,
          height: 25,
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: notificationList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: () {
              setState(() {
                notificationList[index].isRead = false;
                context.push(MainView.routePath);
              });
            },
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: notificationList[index].color,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child:  Image(
                              image: AssetImage(notificationList[index].image),
                              height: 40,
                              width: 40,
                            ),
                          ),
                          if (notificationList[index].isRead! == true)
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: AppColors.kWhiteColor,
                                  ),
                                  color: AppColors.kPrimaryColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(width: 14),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child:  Text(
                                notificationList[index].title,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: notificationList[index].isRead! == true
                                      ? AppColors.kPrimaryColor
                                      : AppColors.kQuinaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              notificationList[index].time,
                              style:  TextStyle(
                                fontSize: 14,
                                color: notificationList[index].isRead! == true
                                    ? AppColors.kQuaternaryColor
                                    : AppColors.kQuinaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: AppColors.kGray200,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
