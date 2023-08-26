import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/jobs/models/add_position_model.dart';
import 'package:jobby_application/jobs/widgets/action_tab.dart';
import 'package:jobby_application/jobs/widgets/item_add_position.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  static const String routePath = '/skills_page';

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  late TextEditingController skillController;

  @override
  void initState() {
    super.initState();
    skillController = TextEditingController();
  }

  @override
  void dispose() {
    skillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Skill'),
      backgroundColor: AppColors.kBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add up to 10 skills you want to search for',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.kQuaternaryColor,
              ),
            ),
            const SizedBox(height: 10),
            TextFieldForms(
              controller: skillController,
              hintText: 'Add your skills',
              maxLines: 3,
              suffixIcon: PhosphorIcons.caret_down,
              onPressed: addPositionSheet,
            ),
          ],
        ),
      ),
    );
  }
  void addPositionSheet() {
    BottomSheets.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? addPosition = '';
        for (var i = 0; i < addPositionModel.length; i++) {
          if (addPositionModel[i].isClick!) {
            addPosition = '${addPosition!}${addPositionModel[i].position!}, ';
          }
        }
        skillController.text = addPosition!;
      },
      child: const Column(
        children: [
          ActionTop(title: 'Skills'),
          SizedBox(height: 10),
          Expanded(child: ItemAddPosition()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
