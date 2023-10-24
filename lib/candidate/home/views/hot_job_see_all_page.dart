import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/candidate/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/candidate/jobs/models/matching_model.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class HotJobSeeAllPage extends StatefulWidget {
  const HotJobSeeAllPage({super.key});

  static const String routePath = '/hotJobSeeAllPage';

  @override
  State<HotJobSeeAllPage> createState() => _HotJobSeeAllPageState();
}

class _HotJobSeeAllPageState extends State<HotJobSeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Hot Jobs'),
      body: ListView.builder(
        itemCount: matchingModel.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        itemBuilder: (context, index) {
          final model = matchingModel[index];
          return ItemHotJobs(
            sizeBox1: matchingModel[index] == matchingModel.first ? 10 : 0,
            title: model.title,
            name: model.name,
            image: model.image,
            salary: model.salary,
            time: model.time,
            role: model.role,
            date: model.date,
            color: model.color,
            isSaved: model.isSaved,
            onApply: () {
              context.push(ApplyNowPage.routePath);
            },
            onSaved: () {
              setState(() {
                model.isSaved = !model.isSaved;
              });
            },
          );
        },
      ),
    );
  }
}
