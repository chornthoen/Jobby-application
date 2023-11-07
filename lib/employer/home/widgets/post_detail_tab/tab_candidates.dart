import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/employer/home/models/candidate_model.dart';
import 'package:jobby_application/employer/home/widgets/post_detail_tab/item_candidate.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/button_outLine.dart';

class TabCandidate extends StatefulWidget {
  const TabCandidate({super.key});

  @override
  State<TabCandidate> createState() => _TabCandidateState();
}

class _TabCandidateState extends State<TabCandidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'New Apply',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackColor,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.xs),
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.xs),
                    decoration: const BoxDecoration(
                      color: AppColors.kColorGray300,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '12',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: candidateList.length,
                itemBuilder: (context, index) {
                  return ItemCandidateDetail(
                    name: candidateList[index].name,
                    image: candidateList[index].image,
                    date: candidateList[index].date,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
          bottom: AppSpacing.lg,
        ),
        child: ButtonOutLineAction(
          text: 'Filter',
          icon: PhosphorIcons.funnel,
          onPressed: () {},
        ),
      ),
    );
  }
}
