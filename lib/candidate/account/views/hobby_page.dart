import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/candidate/account/models/hobby_models.dart';
import 'package:jobby_application/candidate/account/widgets/item_hobby.dart';
import 'package:jobby_application/candidate/jobs/widgets/action_tab.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/show_bottom_sheet.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class HobbyPage extends StatefulWidget {
  const HobbyPage({super.key});

  static const String routePath = '/hobby_page';

  @override
  State<HobbyPage> createState() => _HobbyPageState();
}

class _HobbyPageState extends State<HobbyPage> {
  late TextEditingController hobbyController;

  @override
  void initState() {
    super.initState();
    hobbyController = TextEditingController();
  }

  @override
  void dispose() {
    hobbyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(title: 'Hobby'),
        backgroundColor: AppColors.kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Add up to hobby you want to search for',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kQuaternaryColor,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFieldForms(
                controller: hobbyController,
                hintText: 'choose your hobby',
                maxLines: 4,
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
        for (var i = 0; i < hobbyModel.length; i++) {
          if (hobbyModel[i].isClick!) {
            addPosition = '${addPosition!}${hobbyModel[i].position!}, ';
          }
        }
        hobbyController.text = addPosition!;
      },
      child: const Column(
        children: [
          ActionTop(title: 'Language'),
          SizedBox(height: 10),
          Expanded(child: ItemHobby()),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
