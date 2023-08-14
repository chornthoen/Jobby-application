
import 'package:flutter/material.dart';
import 'package:jobby_application/employer/home/models/manager_post_model_all.dart';
import 'package:jobby_application/employer/home/widgets/item_job_showing.dart';

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
          onTap: () {},
          isPaused: item.isPaused,
          isExpired: item.isExpired,
        );
      },
    );
  }
}
