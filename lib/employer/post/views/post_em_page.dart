import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/main/views/main_em.dart';
import 'package:jobby_application/jobs/models/industry_model.dart';
import 'package:jobby_application/jobs/widgets/action_tab.dart';
import 'package:jobby_application/jobs/widgets/item_industry.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/dropdown_button_custom.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class PostEmployerPage extends StatefulWidget {
  const PostEmployerPage({Key? key}) : super(key: key);

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
    'Junior Level'
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

  List<String> salary =  [
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const TextCustom(text: 'Job Title'),
              const SizedBox(height: 8),
              TextFieldForms(
                hintText: 'Job Title',
                controller: jobTitleController,
              ),
              const SizedBox(height: 10),
              const TextCustom(text: 'Location'),
              const SizedBox(height: 8),
              TextFieldForms(
                hintText: 'Location',
                controller: locationController,
              ),
              const SizedBox(height: 10),
              const TextCustom(text: 'Job Type'),
              const SizedBox(height: 8),
              DropdownButtonCustom(
                level: jobType,
                levelValue: jobTypeValue,
                onChanged: (String newValue) {
                  setState(() {
                    jobTypeValue = newValue;
                  });
                },
              ),
              const SizedBox(height: 10),
              const TextCustom(text: 'Industry'),
              const SizedBox(height: 8),
              TextFieldForms(
                hintText: 'Industry',
                suffixIcon: PhosphorIcons.caret_down,
                controller: industryController,
                onPressed: industrySheet,
              ),
              const SizedBox(height: 10),
              const TextCustom(text: 'Salary'),
              const SizedBox(height: 8),
              DropdownButtonCustom(
                level: salary,
                levelValue: salaryValue,
                onChanged: (String newValue) {
                  setState(() {
                    salaryValue = newValue;
                  });
                },
              ),
              const SizedBox(height: 10),
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
              const SizedBox(height: 10),
              const TextCustom(text: 'Description'),
              const SizedBox(height: 8),
              TextFieldForms(
                minLines: 3,
                maxLines: 10,
                hintText: 'Description',
                controller: descriptionController,
              ),
              const SizedBox(height: 10),
              const TextCustom(text: 'Boosted Job'),
              const SizedBox(height: 8),
              TextFieldForms(
                hintText: 'Boosted Job',
                controller: boostedJobController,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const TextCustom(
                          text: 'Start Date',
                          star: false,
                        ),
                        const SizedBox(height: 10),
                        TextFieldForms(
                          hintText: 'Title',
                          suffixIcon: PhosphorIcons.calendar_blank,
                          controller: startDateController,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        const TextCustom(
                          text: 'End Date',
                          star: false,
                        ),
                        const SizedBox(height: 10),
                        TextFieldForms(
                          hintText: 'Title',
                          suffixIcon: PhosphorIcons.calendar_blank,
                          onPressed: () {
                          },
                          controller: endDateController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ButtonAction(
                isClick: true,
                text: 'Post',
                onPressed: (){},
              ),
              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
  void industrySheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? industry = '';
        for (var i = 0; i < industryModel.length; i++) {
          if (industryModel[i].isClick == true) {
            industry = '${industry!}${industryModel[i].position!}, ';
          }
        }
        industryController.text = industry!;
      },
      child: Column(
        children: const [
          ActionTop(title: 'Industry'),
          SizedBox(height: 10),
          Expanded(child: ItemIndustry()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
