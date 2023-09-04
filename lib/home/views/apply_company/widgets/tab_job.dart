import 'package:flutter/material.dart';
import 'package:jobby_application/home/models/hot_job_model.dart';
import 'package:jobby_application/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabJobs extends StatefulWidget {
  const TabJobs({super.key});

  @override
  State<TabJobs> createState() => _TabJobsState();
}

class _TabJobsState extends State<TabJobs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          '241 jobs in this company',
          style: TextStyle(
            color: AppColors.kPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: hotJobModel.length,
          itemBuilder: (context, index) {
            return ItemHotJobs(
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
              onApply: () {},
            );

          },
        ),
      ],
    );
  }
}
