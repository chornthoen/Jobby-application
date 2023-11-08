import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/jobs/models/industry_model.dart';
import 'package:jobby_application/candidate/jobs/widgets/action_tab.dart';
import 'package:jobby_application/candidate/jobs/widgets/item_industry.dart';
import 'package:jobby_application/employer/main/views/main_em.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/dropdown_button_custom.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';

class PostEmployerPage extends StatefulWidget {
  const PostEmployerPage({super.key});

  static const String routePath = '/post_employer';

  @override
  State<PostEmployerPage> createState() => _PostEmployerPageState();
}

class _PostEmployerPageState extends State<PostEmployerPage> {
  late TextEditingController jobTitleController;
  late TextEditingController locationController;
  late TextEditingController jobTypeController;
  late TextEditingController industryController;
  late TextEditingController salaryController;
  late TextEditingController levelController;
  late TextEditingController descriptionController;
  late TextEditingController boostedJobController;
  late TextEditingController startDateController;
  late TextEditingController endDateController;

  @override
  void initState() {
    super.initState();
    jobTitleController = TextEditingController();
    locationController = TextEditingController();
    jobTypeController = TextEditingController();
    industryController = TextEditingController();
    salaryController = TextEditingController();
    levelController = TextEditingController();
    descriptionController = TextEditingController();
    boostedJobController = TextEditingController();
    startDateController = TextEditingController();
    endDateController = TextEditingController();
  }

  @override
  void dispose() {
    jobTitleController.dispose();
    locationController.dispose();
    jobTypeController.dispose();
    industryController.dispose();
    salaryController.dispose();
    levelController.dispose();
    descriptionController.dispose();
    boostedJobController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  List<String> level = [
    'Entry Level',
    'Mid Level',
    'Senior Level',
    'Junior Level',
  ];

  String levelValue = 'Entry Level';
  List<String> jobType = [
    'Full Time',
    'Part Time',
    'Freelance',
    'Internship',
    'Temporary',
  ];
  String jobTypeValue = 'Full Time';

  List<String> salary = [
    r'500$/month',
    r'600$/month',
    r'700$/month',
    r'800$/month',
    r'900$/month',
    r'1000$/month',
    '2k/month',
    '3k/month',
  ];
  String salaryValue = r'500$/month';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: CustomAppBar(
        title: 'Post',
        onBackTap: () {
          context.push(MainEmployerPage.routePath);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
          child: Column(
            children: [
              const TextCustom(text: 'Job Title'),
              const SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(
                hintText: 'Job Title',
                controller: jobTitleController,
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Location'),
              const SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(
                hintText: 'Location',
                controller: locationController,
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Job Type'),
              const SizedBox(height: AppSpacing.sm),
              DropdownButtonCustom(
                level: jobType,
                levelValue: jobTypeValue,
                onChanged: (String newValue) {
                  setState(() {
                    jobTypeValue = newValue;
                  });
                },
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Industry'),
              const SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(
                hintText: 'Industry',
                suffixIcon: PhosphorIcons.caret_down,
                controller: industryController,
                onPressed: industrySheet,
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Salary'),
              const SizedBox(height: AppSpacing.sm),
              DropdownButtonCustom(
                level: salary,
                levelValue: salaryValue,
                onChanged: (String newValue) {
                  setState(() {
                    salaryValue = newValue;
                  });
                },
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Level'),
              DropdownButtonCustom(
                level: level,
                levelValue: levelValue,
                onChanged: (String newValue) {
                  setState(() {
                    levelValue = newValue;
                  });
                },
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Description'),
              const SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(
                minLines: 3,
                maxLines: 10,
                hintText: 'Description',
                controller: descriptionController,
              ),
              const SizedBox(height: AppSpacing.md),
              const TextCustom(text: 'Boosted Job'),
              const SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(
                hintText: 'Boosted Job',
                controller: boostedJobController,
              ),
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const TextCustom(
                          text: 'Start Date',
                          star: false,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        CustomTextFieldForms(
                          hintText: 'Title',
                          suffixIcon: PhosphorIcons.calendar_blank,
                          controller: startDateController,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      children: [
                        const TextCustom(
                          text: 'End Date',
                          star: false,
                        ),
                        const SizedBox(height: AppSpacing.md),
                        CustomTextFieldForms(
                          hintText: 'Title',
                          suffixIcon: PhosphorIcons.calendar_blank,
                          onPressed: () {},
                          controller: endDateController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.xlg),
              CustomElevatedButton(
                isClick: true,
                text: 'Post',
                onPressed: () {},
              ),
              const SizedBox(height: AppSpacing.xlg),
            ],
          ),
        ),
      ),
    );
  }

  void industrySheet() {
    ShowBottomSheetCustom.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? industry = '';
        for (var i = 0; i < industryModel.length; i++) {
          if (industryModel[i].isClick!) {
            industry = '${industry!}${industryModel[i].position!}, ';
          }
        }
        industryController.text = industry!;
      },
      child: const Column(
        children: [
          ActionTop(title: 'Industry'),
          SizedBox(height: AppSpacing.sm),
          Expanded(child: ItemIndustry()),
          SizedBox(height: AppSpacing.xxlg * 2),
        ],
      ),
    );
  }
}
