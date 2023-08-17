
import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/manager_post_model_all.dart';
import 'package:jobby_application/employer/home/widgets/item_job_showing.dart';
import 'package:jobby_application/employer/home/widgets/tab_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';

class TabABarJobExpire extends StatelessWidget {
  const TabABarJobExpire({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      itemCount: listJobExpire.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = listJobExpire[index];
        return ItemJobShowing(
          title: item.title,
          location: item.location,
          jobType: item.jobType,
          salary: item.salary,
          candidate: item.candidate,
          onTap: () {
            _showBottomSheet(context);
          },
          isPaused: item.isPaused,
          isExpired: item.isExpired,
        );
      },
    );
  }
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      enableDrag: true,
      backgroundColor: AppColors.kBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.28,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarBottomSheet(
                title: 'Paused Job',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: listActionJobReject.length,
                itemBuilder: (context, index) {
                  final item = listActionJobReject[index];
                  return ItemAction(
                    title: item.title,
                    icon: item.icon,
                    onTap: () {
                      switch (item.title) {
                        case 'Edit':
                          Navigator.pop(context);
                          break;
                      }
                    },
                  );
                },
              ),

            ],
          ),
        );
      },
    );
  }

}
