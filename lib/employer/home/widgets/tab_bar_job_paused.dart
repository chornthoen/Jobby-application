import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/manager_post_model_all.dart';
import 'package:jobby_application/employer/home/widgets/item_job_showing.dart';
import 'package:jobby_application/employer/home/widgets/tab_custom.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';

class TabBarJobPaused extends StatelessWidget {
  const TabBarJobPaused({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      itemCount: listJobPaused.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = listJobPaused[index];
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
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  itemCount: listActionJobPaused.length,
                  itemBuilder: (context, index) {
                    final item = listActionJobPaused[index];
                    return ItemAction(
                      title: item.title,
                      icon: item.icon,
                      onTap: () {
                        switch (item.title) {
                          case 'Edit':
                            Navigator.pop(context);
                            break;
                          case 'Show job':
                            Navigator.pop(context);
                            break;
                        }
                      },
                    );
                  },
                ),

              ],
            ),
          ),
        );
      },
    );
  }

}
