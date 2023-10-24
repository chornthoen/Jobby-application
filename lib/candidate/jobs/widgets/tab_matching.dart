import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/home/views/apply_now/views/apply_now_page.dart';
import 'package:jobby_application/candidate/home/widgets/item_hot_jobs.dart';
import 'package:jobby_application/candidate/jobs/models/matching_model.dart';
import 'package:jobby_application/candidate/jobs/views/work_criteria_page.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';
import 'package:jobby_application/shared/widgets/custom_widget.dart';

class MatchingContent extends StatefulWidget {
  const MatchingContent({super.key});

  @override
  State<MatchingContent> createState() => _MatchingContentState();
}

class _MatchingContentState extends State<MatchingContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomWidget(
            image: 'assets/images/business.png',
            title: 'Your business is doing great',
            description: 'Update your work experience to impress employers',
            onTap: () {
              context.push(WorkCriteriaPage.routePath);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            child: Text(
              'Explore more',
              style: CustomTextStyles.bodyLargeSemiBoldBlack,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: matchingModel.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              itemBuilder: (context, index) {
                final model = matchingModel[index];
                return ItemHotJobs(
                  title: model.title,
                  name: model.name,
                  image: model.image,
                  salary: model.salary,
                  time: model.time,
                  role: model.role,
                  date: model.date,
                  color: model.color,
                  isSaved: model.isSaved,
                  onApply: () => context.push(ApplyNowPage.routePath),
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
