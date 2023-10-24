import 'package:flutter/material.dart';
import 'package:jobby_application/candidate/home/widgets/tab_compay.dart';
import 'package:jobby_application/candidate/home/widgets/tab_hight_salary.dart';
import 'package:jobby_application/candidate/home/widgets/tab_job.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';

class CompetitiveSalaryWidget extends StatefulWidget {
  const CompetitiveSalaryWidget({super.key});

  @override
  State<CompetitiveSalaryWidget> createState() =>
      _CompetitiveSalaryWidgetState();
}

class _CompetitiveSalaryWidgetState extends State<CompetitiveSalaryWidget> {

  List<String> tabTitle = [
    'Company',
    'Jobs',
    'High Salary',
  ];
  List<Widget> tabContent = [
    const TabCompany(),
    const TabJob(),
    const TabHighSalary(),
  ];
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppSpacing.xxxlg + 6,
          margin: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
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
                        color: currentTab == i ? AppColors.kPrimaryColor :
                        Colors.white,
                        borderRadius: BorderRadius.circular(AppSpacing.sm),
                      ),
                      child: Text(
                        tabTitle[i],
                        style: TextStyle(
                          color: currentTab == i ? Colors.white :
                          AppColors.kColorGray600,
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
        const SizedBox(height: AppSpacing.lg),
        tabContent[currentTab],
      ],
    );
  }
}
