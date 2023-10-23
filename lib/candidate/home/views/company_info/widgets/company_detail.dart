import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/tab_job.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/tab_overview.dart';
import 'package:jobby_application/candidate/home/views/company_info/widgets/tab_review.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class TabCompanyDetail extends StatefulWidget {
  const TabCompanyDetail({super.key});

  @override
  State<TabCompanyDetail> createState() => _TabCompanyDetailState();
}

class _TabCompanyDetailState extends State<TabCompanyDetail> {
  List<String> tabTitle = [
    'Overview',
    'Job',
    'Reviews',
  ];
  List<Widget> tabContent = [
    const TabOverview(),
    const TabJobs(),
    const TabReviews(),
  ];
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppSpacing.xxxlg + 6,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(AppSpacing.sm),
            boxShadow: [AppColors.kBoxShadowColor],
          ),
          child: Row(
            children: [
              for (int i = 0; i < tabTitle.length; i++)
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        currentTab = i;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: currentTab == i
                            ? AppColors.kPrimaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(AppSpacing.sm),
                      ),
                      child: Text(
                        tabTitle[i],
                        style: TextStyle(
                          color: currentTab == i
                              ? Colors.white
                              : AppColors.kColorGray600,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        tabContent[currentTab],
      ],
    );
  }
}
