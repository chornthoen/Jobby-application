import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/models/languag_models.dart';
import 'package:jobby_application/candidate/account/widgets/item_langaug.dart';
import 'package:jobby_application/candidate/jobs/widgets/action_tab.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  static const String routePath = '/language_page';

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  late TextEditingController languageController;

  @override
  void initState() {
    super.initState();
    languageController = TextEditingController();
  }

  @override
  void dispose() {
    languageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Language'),
        backgroundColor: AppColors.kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Choose your language skill',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFieldForms(
                controller: languageController,
                hintText: 'choose your language',
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
    ShowBottomSheetCustom.showBottomSheet(
      context: context,
      onPressed: () {
        context.pop(context);
        String? addPosition = '';
        for (var i = 0; i < langaugModel.length; i++) {
          if (langaugModel[i].isClick!) {
            addPosition = '${addPosition!}${langaugModel[i].position!}, ';
          }
        }
        languageController.text = addPosition!;
      },
      child: const Column(
        children: [
          ActionTop(title: 'Language'),
          SizedBox(height: 10),
          Expanded(child: ItemLangauge()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
