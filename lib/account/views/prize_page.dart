import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/views/contact_info_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class PrizePage extends StatefulWidget {
  const PrizePage({Key? key}) : super(key: key);

  static const String routePath = '/prize_page';

  @override
  State<PrizePage> createState() => _PrizePageState();
}

class _PrizePageState extends State<PrizePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Prize'),
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            children: [
              const TextCustom(text: 'Award’s name'),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Award’s name',
              ),
              const SizedBox(height: 20),
              const TextCustom(text: 'Organizes', star: false),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Organizes',
              ),
              const SizedBox(height: 20),
              const TextCustom(
                text: 'Award’s year',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                hintText: 'Title',
                suffixIcon: PhosphorIcons.calendar_blank,
                onPressed: () {},
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
    );
  }
}
