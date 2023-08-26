import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class ReferencePersonPage extends StatefulWidget {
  const ReferencePersonPage({super.key});

  static const String routePath = '/reference_person_page';

  @override
  State<ReferencePersonPage> createState() => _ReferencePersonPageState();
}

class _ReferencePersonPageState extends State<ReferencePersonPage> {
  late TextEditingController fullNameController;
  late TextEditingController companyNameController;
  late TextEditingController titleController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;

  @override
  void initState() {
    super.initState();
    fullNameController = TextEditingController();
    companyNameController = TextEditingController();
    titleController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    fullNameController.dispose();
    companyNameController.dispose();
    titleController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

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
              TextFieldForms(
                hintText: 'Full name',
                controller: fullNameController,
              ),
              const SizedBox(height: 20),
              const TextCustom(text: 'Company name'),
              const SizedBox(height: 10),
              TextFieldForms(
                hintText: 'Company name',
                controller: companyNameController,
              ),
              const SizedBox(height: 20),
              const TextCustom(
                text: 'Title',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                hintText: 'Title',
                controller: titleController,
              ),
              const SizedBox(height: 20),
              const TextCustom(
                text: 'Email',
              ),
              const SizedBox(height: 10),
              TextFieldForms(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 20),
              const TextCustom(text: 'Phone number'),
              const SizedBox(height: 10),
              TextFieldForms(
                hintText: 'Phone number',
                controller: phoneNumberController,
              ),
              const SizedBox(height: 40),
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
    );
  }
}
