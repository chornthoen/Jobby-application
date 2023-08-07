import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

import '../../shared/widgets/dropdown_button_custom.dart';
import '../../shared/widgets/text_form_field.dart';
import 'contact_info_page.dart';

class AcademicLevelPage extends StatefulWidget {
  const AcademicLevelPage({Key? key}) : super(key: key);

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
        appBar: CustomAppBar(title: 'Academic Level'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            child: Column(
              children: [
                const TextCustom(text: 'School'),
                const SizedBox(height: 10),
                const TextFieldForms(
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
                const TextFieldForms(
                  hintText: 'Major',
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TextCustom(
                            text: 'Start Date',
                            star: false,
                          ),
                          SizedBox(height: 10),
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
                          SizedBox(height: 10),
                          TextFieldForms(
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
                const TextFieldForms(
                  hintText: 'GPA',
                ),
                const SizedBox(height: 20),
                const TextFieldForms(
                  maxLines: 2,
                  hintText: 'Description',
                ),
                const SizedBox(height: 40),
                ButtonAction(
                  isClick: true,
                  text: 'Save',
                  onPressed: () {
                    context.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
