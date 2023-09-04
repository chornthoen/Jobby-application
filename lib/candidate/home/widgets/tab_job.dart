import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/models/hot_job_model.dart';
import 'package:jobby_application/candidate/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/candidate/home/widgets/item_hot_jobs.dart';

class TabJob extends StatefulWidget {
  const TabJob({super.key});

  @override
  State<TabJob> createState() => _TabJobState();
}

class _TabJobState extends State<TabJob> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 3,
      itemBuilder: (context, index) {
        return ItemHotJobs(
          sizeBox: index == hotJobModel.length - 1 ? 0 : 14,
          title: hotJobModel[index].title,
          name: hotJobModel[index].name,
          image: hotJobModel[index].image,
          salary: hotJobModel[index].salary,
          time: hotJobModel[index].time,
          role: hotJobModel[index].role,
          date: hotJobModel[index].date,
          color: hotJobModel[index].color,
          isSaved: hotJobModel[index].isSaved,
          onSaved: () {
            setState(() {
              hotJobModel[index].isSaved = !hotJobModel[index].isSaved;
            });
          },
          onApply: () {
            context.push(ApplyNowPage.routePath);
          },
        );

      },
    );
  }
}
