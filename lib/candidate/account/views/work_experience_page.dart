import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/utils/close_keyboard.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/dropdown_button_custom.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';

class WorkExperiencePage extends StatefulWidget {
  const WorkExperiencePage({super.key});

  static const String routePath = '/work_experience_page';

  @override
  State<WorkExperiencePage> createState() => _WorkExperiencePageState();
}

class _WorkExperiencePageState extends State<WorkExperiencePage> {
  late TextEditingController titleController;
  late TextEditingController companyNameController;
  late TextEditingController startDateController;
  late TextEditingController endDateController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    companyNameController = TextEditingController();
    startDateController = TextEditingController();
    endDateController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    companyNameController.dispose();
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  List<String> level = [
    'Entry Level',
    'Mid Level',
    'Senior Level',
  ];
  String levelValue = 'Entry Level';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CloseKeyboard.close(context),
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Work Experience'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.sm,
            ),
            child: Column(
              children: [
                const TextCustom(text: 'Title'),
                const SizedBox(height: AppSpacing.sm),
                const CustomTextFieldForms(
                  hintText: 'Title',
                ),
                const SizedBox(height: AppSpacing.lg),
                const TextCustom(text: 'Company Name'),
                const SizedBox(height: AppSpacing.sm),
                const CustomTextFieldForms(
                  hintText: 'Company Name',
                ),
                const SizedBox(height: AppSpacing.lg),
                const TextCustom(text: 'Level'),
                const SizedBox(height: AppSpacing.sm),
                DropdownButtonCustom(
                  level: level,
                  levelValue: levelValue,
                  onChanged: (String newValue) {
                    setState(() {
                      levelValue = newValue;
                    });
                  },
                ),
                const SizedBox(height: AppSpacing.lg),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const TextCustom(
                            text: 'Start Date',
                            star: false,
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          CustomTextFieldForms(
                            hintText: 'Title',
                            suffixIcon: PhosphorIcons.calendar_blank,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacing.sm),
                    Expanded(
                      child: Column(
                        children: [
                          const TextCustom(
                            text: 'End Date',
                            star: false,
                          ),
                          const SizedBox(height: AppSpacing.sm),
                          CustomTextFieldForms(
                            hintText: 'Title',
                            suffixIcon: PhosphorIcons.calendar_blank,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.lg),
                const TextCustom(text: 'Current job', star: false),
                const SizedBox(height: AppSpacing.sm),
                const CustomTextFieldForms(
                  maxLines: 2,
                  hintText: 'Current job',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            left: AppSpacing.lg,
            right: AppSpacing.lg,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          margin: const EdgeInsets.only(bottom: AppSpacing.xlg),
          child: CustomElevatedButton(
            isClick: true,
            text: 'Save',
            onPressed: () {
              context.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
