import 'package:flutter/material.dart';
import 'package:jobby_application/home/widgets/tab_compay.dart';
import 'package:jobby_application/home/widgets/tab_hight_salary.dart';
import 'package:jobby_application/home/widgets/tab_job.dart';
import 'package:jobby_application/shared/colors/app_color.dart';

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
          height: 46,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(10),
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
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        tabTitle[i],
                        style: TextStyle(
                          color: currentTab == i ? Colors.white :
                          AppColors.kQuaternaryColor,
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
        const SizedBox(height: 16),
        tabContent[currentTab],
      ],
    );
  }
}
