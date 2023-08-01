import 'package:flutter/material.dart';
import 'package:jobby_application/home/models/hot_job_model.dart';
import 'package:jobby_application/home/widgets/item_hot_jobs.dart';

class TabHighSalary extends StatefulWidget {
  const TabHighSalary({Key? key}) : super(key: key);

  @override
  State<TabHighSalary> createState() => _TabHighSalaryState();
}

class _TabHighSalaryState extends State<TabHighSalary> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
          onApply: () {},
        );

      },
    );
  }
}
