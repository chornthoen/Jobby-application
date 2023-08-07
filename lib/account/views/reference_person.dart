import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/account/views/contact_info_page.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class ReferencePersonPage extends StatefulWidget {
  const ReferencePersonPage({Key? key}) : super(key: key);

  static const String routePath = '/reference_person_page';

  @override
  State<ReferencePersonPage> createState() => _ReferencePersonPageState();
}

class _ReferencePersonPageState extends State<ReferencePersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reference Person'),
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            children: [
              const TextCustom(text: 'Full name'),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Full name',
              ),
              const SizedBox(height: 20),
              const TextCustom(text: 'Company name'),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Company name',
              ),
              const SizedBox(height: 20),
              const TextCustom(
                text: 'Title',
              ),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Title',
              ),
              const SizedBox(height: 20),
              const TextCustom(
                text: 'Email',
              ),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              const TextCustom(
                text: 'Phone number',
              ),
              const SizedBox(height: 10),
              const TextFieldForms(
                hintText: 'Phone number',
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
                                                                      