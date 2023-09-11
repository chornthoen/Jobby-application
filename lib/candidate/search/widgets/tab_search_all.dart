import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/candidate/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/candidate/jobs/models/matching_model.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

class TabSearchAll extends StatefulWidget {
  const TabSearchAll({super.key});

  @override
  State<TabSearchAll> createState() => _TabSearchAllState();
}

class _TabSearchAllState extends State<TabSearchAll> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Search results for ',
                      style: TextStyle(
                        color: AppColors.kQuinaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '“Flutter Developer”',
                      style: TextStyle(
                        color: AppColors.kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: matchingModel.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final model = matchingModel[index];
                return ItemHotJobs(
                  sizeBox1: matchingModel[index]
                      == matchingModel.first ? 10 : 0,
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
          ),
        ],
      ),
    );
  }
}
