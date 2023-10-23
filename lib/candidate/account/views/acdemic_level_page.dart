import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/dropdown_button_custom.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class AcademicLevelPage extends StatefulWidget {
  const AcademicLevelPage({super.key});

  static const String routePath = '/academic_level_page';

  @override
  State<AcademicLevelPage> createState() => _AcademicLevelPageState();
}

class _AcademicLevelPageState extends State<AcademicLevelPage> {
  List<String> level = [
    'Entry Level',
    'Mid Level',
    'Senior Level',
  ];
  String levelValue = 'Entry Level';

  //close keyboard
  bool get isKeyboardOpen => MediaQuery.of(context).viewInsets.bottom > 0;

  void closeKeyboard() {
    if (isKeyboardOpen) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: closeKeyboard,
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        appBar: const CustomAppBar(title: 'Academic Level'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              children: [
                const TextCustom(text: 'School'),
                const SizedBox(height: 10),
                const CustomTextFieldForms(
                  hintText: 'School',
                ),
                const SizedBox(height: 20),
                const TextCustom(text: 'Type of certificate'),
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
                const TextCustom(text: 'Major'),
                const SizedBox(height: 10),
                const CustomTextFieldForms(
                  hintText: 'Major',
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
                          CustomTextFieldForms(
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
                const SizedBox(height: 20),
                const TextCustom(text: 'GPA', star: false),
                const SizedBox(height: 10),
                const CustomTextFieldForms(
                  hintText: 'GPA',
                ),
                const SizedBox(height: 20),
                const CustomTextFieldForms(
                  maxLines: 2,
                  hintText: 'Description',
                ),
                const SizedBox(height: 10),
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
