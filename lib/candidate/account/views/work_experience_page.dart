import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/dropdown_button_custom.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

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


  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
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
      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Work Experience'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              children: [
                const TextCustom(text: 'Title'),
                const SizedBox(height: 10),
                const TextFieldForms(
                  hintText: 'Title',
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Company Name'),
                const SizedBox(height: 10),
                const TextFieldForms(
                  hintText: 'Company Name',
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Level'),
                const SizedBox(height: 10),
                DropdownButtonCustom(
                  level: level,
                  levelValue: levelValue,
                  onChanged: (String newValue) {
                    setState(() {
                      levelValue = newValue;
                    });
                  },
                ),
                const SizedBox(height: 20),
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                 const TextCustom(text: 'Current job', star: false),
                const SizedBox(height: 10),
                const TextFieldForms(
                  maxLines: 2,
                  hintText: 'Current job',
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          margin: const EdgeInsets.only(bottom: 20),
          child: ButtonAction(
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
